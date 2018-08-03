<#-- // Property accessors -->
<#foreach property in pojo.getAllPropertiesIterator()>
<#if pojo.getMetaAttribAsBool(property, "gen-property", true)>
<#if property.getName().equalsIgnoreCase("inserttimeforhis")>
    @${pojo.importType("javax.persistence.Temporal")}(${pojo.importType("javax.persistence.TemporalType")}.TIMESTAMP)
    @Column(name = "INSERT_TIME_FOR_HIS",insertable = false, updatable = false)
</#if>
<#if property.getName().equalsIgnoreCase("operatetimeforhis")>
    @${pojo.importType("javax.persistence.Temporal")}(${pojo.importType("javax.persistence.TemporalType")}.TIMESTAMP)
    @Column(name = "OPERATE_TIME_FOR_HIS",insertable = false)
</#if>
<#if !(property.getName().equalsIgnoreCase("operatetimeforhis")||property.getName().equalsIgnoreCase("inserttimeforhis"))>
	<#include "GetPropertyAnnotation.ftl"/>
</#if>
	${pojo.getPropertyGetModifiers(property)} ${pojo.getJavaTypeName(property, jdk5)} ${pojo.getGetterSignature(property)}() {
		return this.${property.name};
	}

	${pojo.getPropertySetModifiers(property)} void set${pojo.getPropertyName(property)}(${pojo.getJavaTypeName(property, jdk5)} ${property.name}) {
		this.${property.name} = ${property.name};
	}
</#if>
</#foreach>