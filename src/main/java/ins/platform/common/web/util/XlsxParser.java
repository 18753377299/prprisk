/* ====================================================================
   Licensed to the Apache Software Foundation (ASF) under one or more
   contributor license agreements.  See the NOTICE file distributed with
   this work for additional information regarding copyright ownership.
   The ASF licenses this file to You under the Apache License, Version 2.0
   (the "License"); you may not use this file except in compliance with
   the License.  You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
==================================================================== */

package ins.platform.common.web.util;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackageAccess;
import org.apache.poi.ss.usermodel.BuiltinFormats;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.xssf.eventusermodel.ReadOnlySharedStringsTable;
import org.apache.poi.xssf.eventusermodel.XSSFReader;
import org.apache.poi.xssf.model.StylesTable;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFRichTextString;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

public class XlsxParser {
	private static final Logger LOGGER = LoggerFactory
			.getLogger(XlsxParser.class);

	/**
	 * The type of the data value is indicated by an attribute on the cell. The
	 * value is usually in a "v" element within the cell.
	 */
	enum xssfDataType {
		BOOL, ERROR, FORMULA, INLINESTR, SSTINDEX, NUMBER,
	}

	/**
	 * Derived from http://poi.apache.org/spreadsheet/how-to.html#xssf_sax_api
	 * <p/>
	 * Also see Standard ECMA-376, 1st edition, part 4, pages 1928ff, at
	 * http://www.ecma-international.org/publications/standards/Ecma-376.htm
	 * <p/>
	 * A web-friendly version is http://openiso.org/Ecma/376/Part4
	 */
	class MyXSSFSheetHandler extends DefaultHandler {
		XlsxParser xlsxParser;
		/**
		 * Table with styles
		 */
		private StylesTable stylesTable;

		/**
		 * Table with unique strings
		 */
		private ReadOnlySharedStringsTable sharedStringsTable;

		/**
		 * Number of columns to read starting with leftmost
		 */
		private int minColumnCount;

		// Set when V start element is seen
		private boolean vIsOpen;

		// Set when cell start element is seen;
		// used when cell close element is seen.
		private xssfDataType nextDataType;

		// Used to format numeric cell values.
		private short formatIndex;
		private String formatString;
		private final DataFormatter formatter;

		private int thisColumn = -1;
		// The last column printed to the output stream
		private int lastColumnNumber = -1;

		// Gathers characters as they are seen.
		private String value;

		private List<String> rowList = new ArrayList<String>();
		private int curRow = 0; 

		/**
		 * Accepts objects needed while parsing.
		 *
		 * @param styles
		 *            Table of styles
		 * @param strings
		 *            Table of shared strings
		 * @param cols
		 *            Minimum number of columns to show
		 * @param target
		 *            Sink for output
		 */
		public MyXSSFSheetHandler(XlsxParser xlsxParser, StylesTable styles,
				ReadOnlySharedStringsTable strings, int cols) {
			this.xlsxParser = xlsxParser;
			this.stylesTable = styles;
			this.sharedStringsTable = strings;
			this.minColumnCount = cols;
			this.value = "";
			this.nextDataType = xssfDataType.NUMBER;
			this.formatter = new DataFormatter();
			 formatter.addFormat("m/d/yy", new
			 SimpleDateFormat("yyyy/M/d"));

		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see
		 * org.xml.sax.helpers.DefaultHandler#startElement(java.lang.String,
		 * java.lang.String, java.lang.String, org.xml.sax.Attributes)
		 */
		public void startElement(String uri, String localName, String name,
				Attributes attributes) throws SAXException {

			if ("inlineStr".equals(name) || "v".equals(name)) {
				vIsOpen = true;
				// Clear contents cache
				//使用string 替代 stringbuffer，通过中间变量实现互换；
				StringBuffer tmp = new StringBuffer(value);
				tmp.setLength(0);
				value = tmp.toString();
//				value.setLength(0);
			}
			// c => cell
			else if ("c".equals(name)) {
				// Get the cell reference
				String r = attributes.getValue("r");
				int firstDigit = -1;
				for (int c = 0; c < r.length(); ++c) {
					if (Character.isDigit(r.charAt(c))) {
						firstDigit = c;
						break;
					}
				}
				thisColumn = nameToColumn(r.substring(0, firstDigit));

				// Set up defaults.
				this.nextDataType = xssfDataType.NUMBER;
				this.formatIndex = -1;
				this.formatString = null;
				String cellType = attributes.getValue("t");
				String cellStyleStr = attributes.getValue("s");
				if ("b".equals(cellType)){
					nextDataType = xssfDataType.BOOL;}
				else if ("e".equals(cellType)){
					nextDataType = xssfDataType.ERROR;}
				else if ("inlineStr".equals(cellType)){
					nextDataType = xssfDataType.INLINESTR;}
				else if ("s".equals(cellType)){
					nextDataType = xssfDataType.SSTINDEX;}
				else if ("str".equals(cellType)){
					nextDataType = xssfDataType.FORMULA;}
				else if (cellStyleStr != null) {
					// It's a number, but almost certainly one
					// with a special style or format
					int styleIndex = Integer.parseInt(cellStyleStr);
					XSSFCellStyle style = stylesTable.getStyleAt(styleIndex);
					this.formatIndex = style.getDataFormat();
					this.formatString = style.getDataFormatString();
					if (this.formatString == null) {
						this.formatString = BuiltinFormats
								.getBuiltinFormat(this.formatIndex);
					}
				}
			}

		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see org.xml.sax.helpers.DefaultHandler#endElement(java.lang.String,
		 * java.lang.String, java.lang.String)
		 */
		public void endElement(String uri, String localName, String name)
				throws SAXException {

			String thisStr = null;

			// v => contents of a cell
			if ("v".equals(name)) {
				// Process the value contents as required.
				// Do now, as characters() may be called more than once
				switch (nextDataType) {

				case BOOL:
					char first = value.charAt(0);
					thisStr = first == '0' ? "FALSE" : "TRUE";
					break;

				case ERROR:
//					thisStr = "\"ERROR:" + value.toString() + '"';
					thisStr = "\"ERROR:" + value + '"';
					break;

				case FORMULA:
					// A formula could result in a string value,
					// so always add double-quote characters.
//					thisStr = '"' + value.toString() + '"';
					thisStr = '"' + value + '"';
					break;

				case INLINESTR:
//					XSSFRichTextString rtsi = new XSSFRichTextString(
//							value.toString());
					XSSFRichTextString rtsi = new XSSFRichTextString(value);
					thisStr = '"' + rtsi.toString() + '"';
					break;

				case SSTINDEX:
//					String sstIndex = value.toString();
					String sstIndex = value;
					try {
						int idx = Integer.parseInt(sstIndex);
						XSSFRichTextString rtss = new XSSFRichTextString(
								sharedStringsTable.getEntryAt(idx));
						thisStr = rtss.toString();
					} catch (NumberFormatException ex) {
//						ex.printStackTrace();
						LOGGER.error(ex.getMessage(),ex);
					}
					break;

				case NUMBER:
//					String n = value.toString();
					String n = value;
					
					if (this.formatString != null) {
						thisStr = formatter.formatRawCellContents(
								Double.parseDouble(n), this.formatIndex,
								this.formatString);
					} else {
						thisStr = n;
					}
					break;

				default:
					thisStr = "(TODO: Unexpected type: " + nextDataType + ")";
					break;
				}

				// Output after we've seen the string contents
				// Emit commas for any fields that were missing on this row
				if (lastColumnNumber == -1) {
					lastColumnNumber = 0;
				}
				for (int i = lastColumnNumber + 1; i < thisColumn; ++i) {
					rowList.add("");

				}
				// Might be the empty string.
				rowList.add(thisStr);
				// Update column
				if (thisColumn > -1){
					lastColumnNumber = thisColumn;}

			} else if ("row".equals(name)) {
				if (minColumnCount < rowList.size()) {
					minColumnCount = rowList.size();
				}
				// We're onto a new row
				// Print out any missing commas if needed
				// if (minColumns > 0) {
				// Columns are 0 based
				if (lastColumnNumber == -1) {
					lastColumnNumber = 0;
				}
				for (int i = lastColumnNumber + 1; i < (this.minColumnCount); i++) {

					rowList.add("");

				}
				// }

				try {
					if (curRow > titleRow - 1) {
						xlsxParser.optRows(sheetIndex, sheetName, curRow,
								rowList);
					}
				} catch (Exception e) {
//					e.printStackTrace();
					LOGGER.error(e.getMessage(),e);
				}

				rowList.clear();
				lastColumnNumber = -1;
				curRow++;
			}

		}

		/**
		 * Captures characters only if a suitable element is open. Originally
		 * was just "v"; extended for inlineStr also.
		 */
		public void characters(char[] ch, int start, int length)
				throws SAXException {
			if (vIsOpen){
				StringBuffer tmp = new StringBuffer(value);
				tmp.append(ch, start, length);
				value = tmp.toString();
//				value.append(ch, start, length);
				}
		}

		/**
		 * Converts an Excel column name like "C" to a zero-based index.
		 *
		 * @param name
		 * @return Index corresponding to the specified name
		 */
		private int nameToColumn(String name) {
			int column = -1;
			for (int i = 0; i < name.length(); ++i) {
				int c = name.charAt(i);
				column = (column + 1) * 26 + c - 'A';
			}
			return column;
		}

		@Override
		public void startDocument() throws SAXException {
			xlsxParser.startDocument();

		}

		@Override
		public void endDocument() throws SAXException {
			xlsxParser.endDocument();
		}
	}

	// /////////////////////////////////////
	private int minColumns = -1;
	private int sheetIndex = -1;
	private int titleRow = 0;
	private String sheetName = "Sheet1";

	/**
	 * Creates a new XLSX -> CSV converter
	 *
	 * @param pkg
	 *            The XLSX package to process
	 * @param output
	 *            The PrintStream to output the CSV to
	 * @param minColumns
	 *            The minimum number of columns to output, or -1 for no minimum
	 */
	public XlsxParser() {
	}

	public int getMinColumns() {
		return minColumns;
	}

	public void setMinColumns(int minColumns) {
		this.minColumns = minColumns;
	}

	public int getTitleRow() {
		return titleRow;
	}

	public void setTitleRow(int titleRow) {
		this.titleRow = titleRow;
	}

	/**
	 * Parses and shows the content of one sheet using the specified styles and
	 * shared-strings tables.
	 *
	 * @param styles
	 * @param strings
	 * @param sheetInputStream
	 */
	public void processSheet(StylesTable styles,
			ReadOnlySharedStringsTable strings, InputStream sheetInputStream)
			throws IOException, ParserConfigurationException, SAXException {

		InputSource sheetSource = new InputSource(sheetInputStream);
		SAXParserFactory saxFactory = SAXParserFactory.newInstance();
		SAXParser saxParser = saxFactory.newSAXParser();
		XMLReader sheetParser = saxParser.getXMLReader();
		ContentHandler handler = new MyXSSFSheetHandler(this, styles, strings,
				this.minColumns);
		sheetParser.setContentHandler(handler);
		sheetParser.parse(sheetSource);
	}

	public void process(String path) throws Exception {

		OPCPackage xlsxPackage = OPCPackage.open(path, PackageAccess.READ);
		realProcess(xlsxPackage);

	}

	public void process(InputStream in) throws Exception {

		OPCPackage xlsxPackage = OPCPackage.open(in);
		realProcess(xlsxPackage);
		in.close();
	}

	public void process(File file) throws Exception {

		OPCPackage xlsxPackage = OPCPackage.open(file, PackageAccess.READ);
		realProcess(xlsxPackage);

	}

	private void realProcess(OPCPackage pkg) throws Exception {
		try {
			ReadOnlySharedStringsTable strings = new ReadOnlySharedStringsTable(
					pkg);
			XSSFReader xssfReader = new XSSFReader(pkg);
			StylesTable styles = xssfReader.getStylesTable();
			XSSFReader.SheetIterator iter = (XSSFReader.SheetIterator) xssfReader
					.getSheetsData();
			int index = 0;
			while (iter.hasNext()) {
				InputStream stream = iter.next();
				sheetIndex = index;
				sheetName = iter.getSheetName();
				processSheet(styles, strings, stream);
				stream.close();
				++index;
			}
		} finally {
			pkg.close();
		}
	}

	public void processOneSheet(String path, int sheetIndex) throws Exception {
		OPCPackage pkg = OPCPackage.open(path, PackageAccess.READ);
		realProcessOneSheet(pkg, sheetIndex);
	}

	public void processOneSheet(InputStream in, int sheetIndex)
			throws Exception {
		OPCPackage pkg = OPCPackage.open(in);
		realProcessOneSheet(pkg, sheetIndex);
	}

	public void processOneSheet(File file, int sheetIndex) throws Exception {

		OPCPackage xlsxPackage = OPCPackage.open(file, PackageAccess.READ);
		realProcess(xlsxPackage);

	}

	private void realProcessOneSheet(OPCPackage pkg, int sheetId)
			throws Exception {
		try {
			ReadOnlySharedStringsTable strings = new ReadOnlySharedStringsTable(
					pkg);
			XSSFReader xssfReader = new XSSFReader(pkg);
			StylesTable styles = xssfReader.getStylesTable();
			XSSFReader.SheetIterator iter = (XSSFReader.SheetIterator) xssfReader
					.getSheetsData();
			int index = 0;
			while (iter.hasNext()) {
				InputStream stream = iter.next();
				sheetIndex = index;
				sheetName = iter.getSheetName();
				if (sheetIndex == sheetId) {
					processSheet(styles, strings, stream);
					stream.close();
					return;
				}
				stream.close();
				++index;
			}
		} finally {
			pkg.close();
		}
	}

	public void optRows(int sheetIndex, String sheetName, int curRow,
			List<String> rowList) throws Exception {
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < rowList.size(); i++) {
			sb.append(rowList.get(i));
			if (i < rowList.size() - 1) {
				sb.append(",");
			}
		}
		LOGGER.info(sb.toString());
	}

	public void startDocument() throws SAXException {
		LOGGER.info("startDocument");
	}

	public void endDocument() throws SAXException {
		LOGGER.info("endDocument");
	}

}