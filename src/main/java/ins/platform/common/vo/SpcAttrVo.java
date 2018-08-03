package ins.platform.common.vo;

import java.util.ArrayList;
import java.util.List;

public class SpcAttrVo {

	private String title;

	private String panelTitle;

	private String idOrName;
	private String dataType;
	private String queryType;
	private String labelText;
	private String groupSize;
	private String inputSize;
	private String labelSize;
	private String inputType;
	private List<SpcInputVo> inputList = new ArrayList<SpcInputVo>();
	private String codeSelectType;
	private String codeSelectCodeType;

	private String columnTitle;
	private String data;
	private String columnAlign;
	private String searchable;
	private String orderable;
	private String render;

	private List<SpcButtonVo> buttonList = new ArrayList<SpcButtonVo>();

	private String rowCallback;

	private String functions;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPanelTitle() {
		return panelTitle;
	}

	public void setPanelTitle(String panelTitle) {
		this.panelTitle = panelTitle;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getSearchable() {
		return searchable;
	}

	public void setSearchable(String searchable) {
		this.searchable = searchable;
	}

	public String getOrderable() {
		return orderable;
	}

	public void setOrderable(String orderable) {
		this.orderable = orderable;
	}

	public String getRender() {
		return render;
	}

	public void setRender(String render) {
		this.render = render;
	}

	public String getRowCallback() {
		return rowCallback;
	}

	public void setRowCallback(String rowCallback) {
		this.rowCallback = rowCallback;
	}

	public String getIdOrName() {
		return idOrName;
	}

	public void setIdOrName(String idOrName) {
		this.idOrName = idOrName;
	}

	public String getLabelText() {
		return labelText;
	}

	public void setLabelText(String labelText) {
		this.labelText = labelText;
	}

	public String getInputSize() {
		return inputSize;
	}

	public void setInputSize(String inputSize) {
		this.inputSize = inputSize;
	}

	public String getLabelSize() {
		return labelSize;
	}

	public void setLabelSize(String labelSize) {
		this.labelSize = labelSize;
	}

	public String getDataType() {
		return dataType;
	}

	public void setDataType(String dataType) {
		this.dataType = dataType;
	}

	public String getQueryType() {
		return queryType;
	}

	public void setQueryType(String queryType) {
		this.queryType = queryType;
	}

	public String getFunctions() {
		return functions;
	}

	public void setFunctions(String functions) {
		this.functions = functions;
	}

	public String getColumnTitle() {
		return columnTitle;
	}

	public void setColumnTitle(String columnTitle) {
		this.columnTitle = columnTitle;
	}

	public String getInputType() {
		return inputType;
	}

	public void setInputType(String inputType) {
		this.inputType = inputType;
	}

	public List<SpcInputVo> getInputList() {
		return inputList;
	}

	public void setInputList(List<SpcInputVo> inputList) {
		this.inputList = inputList;
	}

	public String getCodeSelectType() {
		return codeSelectType;
	}

	public void setCodeSelectType(String codeSelectType) {
		this.codeSelectType = codeSelectType;
	}

	public String getCodeSelectCodeType() {
		return codeSelectCodeType;
	}

	public void setCodeSelectCodeType(String codeSelectCodeType) {
		this.codeSelectCodeType = codeSelectCodeType;
	}

	public List<SpcButtonVo> getButtonList() {
		return buttonList;
	}

	public void setButtonList(List<SpcButtonVo> buttonList) {
		this.buttonList = buttonList;
	}

	public String getGroupSize() {
		return groupSize;
	}

	public void setGroupSize(String groupSize) {
		this.groupSize = groupSize;
	}

	public String getColumnAlign() {
		return columnAlign;
	}

	public void setColumnAlign(String columnAlign) {
		this.columnAlign = columnAlign;
	}

}
