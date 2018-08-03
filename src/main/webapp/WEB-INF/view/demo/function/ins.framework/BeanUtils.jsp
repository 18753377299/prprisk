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
				<th style="text-align: center;">方法名</th>
				<th style="text-align: center;">使用说明</th>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Field getDeclaredField(Object object, String propertyName)</td>
				<td class="long">循环向上转型,获取对象的DeclaredField.<br> 示例:<br>
					BeanUtils.getDeclaredField(object, propertyName);<br> @param
					object <br> @param propertyName<br> @return
					对象的DeclaredField<br> @throws NoSuchFieldException
					如果没有该Field时抛出. <br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Field getDeclaredField(Class clazz, String propertyName)</td>
				<td class="long">循环向上转型,获取对象的DeclaredField.<br> 示例:<br>
					BeanUtils.getDeclaredField(clazz, propertyName);<br> @param
					clazz <br> @param propertyName<br> @return
					对象的DeclaredField<br> @throws NoSuchFieldException
					如果没有该Field时抛出. <br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Object forceGetProperty(Object object, String propertyName)</td>
				<td class="long">暴力获取对象变量值,忽略private,protected修饰符的限制. <br>
					示例:<br> BeanUtils.forceGetProperty(object, propertyName);<br>
					@param object <br> @param propertyName <br> @return 对象变量值<br>
					@throws NoSuchFieldException 如果没有该Field时抛出. <br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void forceSetProperty(Object object, String propertyName, Object
					newValue)</td>
				<td class="long">暴力设置对象变量值,忽略private,protected修饰符的限制.<br>
					示例:<br> BeanUtils.forceSetProperty(object, propertyName);<br>
					@param object<br> @param propertyName<br> @param newValue<br>
					@throws NoSuchFieldException<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Object invokePrivateMethod(Object object, String methodName,
					Object... params)</td>
				<td class="long">暴力调用对象函数,忽略private,protected修饰符的限制.<br>
					示例:<br> BeanUtils.invokePrivateMethod(object, methodName
					,params);<br> @param object<br> @param methodName<br>
					@param params<br> @throws NoSuchMethodException
					如果没有该Method时抛出.<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					List<Field> getFieldsByType(Object object, Class type) 
				</td>
				<td class="long">按Filed的类型取得Field列表.<br> 示例:<br> List<Field>
					fields = BeanUtils.getFieldsByType(object, type);<br>
					@param object<br>
					@param type<br>
					@return Field列表<br></td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Class getPropertyType(Class type, String name)</td>
				<td class="long">按FiledName获得Field的类型.<br> 示例:<br>
					BeanUtils.getPropertyType(type, name);<br> @param type <br>
					@param name<br> @return Field的类型<br> @throws
					NoSuchFieldException 如果没有该Field时抛出. <br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getGetterName(Class type, String fieldName)</td>
				<td class="long">获得field的getter函数名称.<br> @param type <br>
					@param fieldName<br> @return getter函数名称<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Method getGetterMethod(Class type, String fieldName)</td>
				<td class="long">获得field的getter函数,如果找不到该方法,返回null.<br>
					@param type <br> @param fieldName<br> @return getter函数<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Object invoke(String className, String methodName, Class[]
					argsClass, Object[] args)</td>
				<td class="long">调用方法<br> 示例:<br> Class cl =
					Class.forName(className);<br> Method method =
					cl.getMethod(methodName, argsClass);<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Object invoke(Object oldObject, String methodName, Class[]
					argsClass, Object[] args)</td>
				<td class="long">调用方法<br> Class cl = oldObject.getClass();<br>
					Method method = cl.getMethod(methodName, argsClass);<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String[] getFieldsName(Class cl)</td>
				<td class="long">获取属性列表.<br> 示例:<br> Field[] fields =
					cl.getDeclaredFields();<br> String[] fieldNames = new
					String[fields.length];<br> @param cl <br> @return 属性列表<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					List<String> getAllFieldName(Class cl) 
				</td>
				<td class="long">获取所有属性列表.<br> 示例:<br> List<String>
					list = new ArrayList<String>();<br>
					Field[] fields = cl.getDeclaredFields();<br>
					@param cl<br>
					@return 所有属性列表<br></td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					List<Method> getSetter(Class cl) 
				</td>
				<td class="long">获得类的setter函数列表.<br> 示例:<br> List<Method>
					list = new ArrayList<Method>();<br>
					Method[] methods = cl.getDeclaredMethods();<br>
					@param cl<br>
					@return setter函数列表<br></td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					List<Method> getGetter(Class cl) 
				</td>
				<td class="long">获得类的getter函数列表.<br> 示例:<br> List<Method>
					list = new ArrayList<Method>();<br>
					Method[] methods = cl.getDeclaredMethods();<br>
					@param cl<br>
					@return getter函数列表<br></td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getClassNameWithoutPackage(Class cl)</td>
				<td class="long">获取类名（不包含包名）.<br> Returns the classname
					without the package. <br>Example: If the input class is
					java.lang.String than the return value is String.<br> @param
					cl The class to inspect<br> @return The classname
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String beanToString(Object obj)</td>
				<td class="long">把DTO对象转成字符串<br> @param obj DTO对象<br>
					@return 带属性名和值的字符串
				</td>
			</tr>

		</table>
	</div>
</body>
</HTML>