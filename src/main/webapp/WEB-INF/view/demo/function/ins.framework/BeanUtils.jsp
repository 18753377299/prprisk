<%@ page contentType="text/html; charset=GBK"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="/common/i18njs.jsp"%>
<%@ include file="/common/meta_css.jsp"%>
<%@ include file="/common/meta_js.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
</HEAD>

<body>
	<br />
	<br />
	<br />
	<div>
		<table class="fix_table">
			<tr>
				<th style="text-align: center;">������</th>
				<th style="text-align: center;">ʹ��˵��</th>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Field getDeclaredField(Object object, String propertyName)</td>
				<td class="long">ѭ������ת��,��ȡ�����DeclaredField.<br> ʾ��:<br>
					BeanUtils.getDeclaredField(object, propertyName);<br> @param
					object <br> @param propertyName<br> @return
					�����DeclaredField<br> @throws NoSuchFieldException
					���û�и�Fieldʱ�׳�. <br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Field getDeclaredField(Class clazz, String propertyName)</td>
				<td class="long">ѭ������ת��,��ȡ�����DeclaredField.<br> ʾ��:<br>
					BeanUtils.getDeclaredField(clazz, propertyName);<br> @param
					clazz <br> @param propertyName<br> @return
					�����DeclaredField<br> @throws NoSuchFieldException
					���û�и�Fieldʱ�׳�. <br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Object forceGetProperty(Object object, String propertyName)</td>
				<td class="long">������ȡ�������ֵ,����private,protected���η�������. <br>
					ʾ��:<br> BeanUtils.forceGetProperty(object, propertyName);<br>
					@param object <br> @param propertyName <br> @return �������ֵ<br>
					@throws NoSuchFieldException ���û�и�Fieldʱ�׳�. <br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void forceSetProperty(Object object, String propertyName, Object
					newValue)</td>
				<td class="long">�������ö������ֵ,����private,protected���η�������.<br>
					ʾ��:<br> BeanUtils.forceSetProperty(object, propertyName);<br>
					@param object<br> @param propertyName<br> @param newValue<br>
					@throws NoSuchFieldException<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Object invokePrivateMethod(Object object, String methodName,
					Object... params)</td>
				<td class="long">�������ö�����,����private,protected���η�������.<br>
					ʾ��:<br> BeanUtils.invokePrivateMethod(object, methodName
					,params);<br> @param object<br> @param methodName<br>
					@param params<br> @throws NoSuchMethodException
					���û�и�Methodʱ�׳�.<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					List<Field> getFieldsByType(Object object, Class type) 
				</td>
				<td class="long">��Filed������ȡ��Field�б�.<br> ʾ��:<br> List<Field>
					fields = BeanUtils.getFieldsByType(object, type);<br>
					@param object<br>
					@param type<br>
					@return Field�б�<br></td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Class getPropertyType(Class type, String name)</td>
				<td class="long">��FiledName���Field������.<br> ʾ��:<br>
					BeanUtils.getPropertyType(type, name);<br> @param type <br>
					@param name<br> @return Field������<br> @throws
					NoSuchFieldException ���û�и�Fieldʱ�׳�. <br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getGetterName(Class type, String fieldName)</td>
				<td class="long">���field��getter��������.<br> @param type <br>
					@param fieldName<br> @return getter��������<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Method getGetterMethod(Class type, String fieldName)</td>
				<td class="long">���field��getter����,����Ҳ����÷���,����null.<br>
					@param type <br> @param fieldName<br> @return getter����<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Object invoke(String className, String methodName, Class[]
					argsClass, Object[] args)</td>
				<td class="long">���÷���<br> ʾ��:<br> Class cl =
					Class.forName(className);<br> Method method =
					cl.getMethod(methodName, argsClass);<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Object invoke(Object oldObject, String methodName, Class[]
					argsClass, Object[] args)</td>
				<td class="long">���÷���<br> Class cl = oldObject.getClass();<br>
					Method method = cl.getMethod(methodName, argsClass);<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String[] getFieldsName(Class cl)</td>
				<td class="long">��ȡ�����б�.<br> ʾ��:<br> Field[] fields =
					cl.getDeclaredFields();<br> String[] fieldNames = new
					String[fields.length];<br> @param cl <br> @return �����б�<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					List<String> getAllFieldName(Class cl) 
				</td>
				<td class="long">��ȡ���������б�.<br> ʾ��:<br> List<String>
					list = new ArrayList<String>();<br>
					Field[] fields = cl.getDeclaredFields();<br>
					@param cl<br>
					@return ���������б�<br></td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					List<Method> getSetter(Class cl) 
				</td>
				<td class="long">������setter�����б�.<br> ʾ��:<br> List<Method>
					list = new ArrayList<Method>();<br>
					Method[] methods = cl.getDeclaredMethods();<br>
					@param cl<br>
					@return setter�����б�<br></td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					List<Method> getGetter(Class cl) 
				</td>
				<td class="long">������getter�����б�.<br> ʾ��:<br> List<Method>
					list = new ArrayList<Method>();<br>
					Method[] methods = cl.getDeclaredMethods();<br>
					@param cl<br>
					@return getter�����б�<br></td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getClassNameWithoutPackage(Class cl)</td>
				<td class="long">��ȡ������������������.<br> Returns the classname
					without the package. <br>Example: If the input class is
					java.lang.String than the return value is String.<br> @param
					cl The class to inspect<br> @return The classname
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String beanToString(Object obj)</td>
				<td class="long">��DTO����ת���ַ���<br> @param obj DTO����<br>
					@return ����������ֵ���ַ���
				</td>
			</tr>

		</table>
	</div>
</body>
</HTML>