${pojo.getPackageDeclaration()}

// Generated by Hibernate Tools ${version} (sinosoft version), Don't modify!
<#assign classbody>
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

<#include "PojoTypeDeclaration.ftl"/> {
	private static final long serialVersionUID = 1L;
<#if !pojo.isInterface()>
<#include "PojoFields.ftl"/> 
<#include "PojoPropertyAccessors.ftl"/> 
<#include "PojoToString.ftl"/>
<#include "PojoEqualsHashcode.ftl"/>
<#else><#include "PojoInterfacePropertyAccessors.ftl"/>
</#if>
<#include "PojoExtraClassCode.ftl"/>
}
</#assign>
${pojo.generateImports()}
${classbody}