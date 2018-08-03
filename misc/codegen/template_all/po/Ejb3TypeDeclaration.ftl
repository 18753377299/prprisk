<#if ejb3?if_exists>
<#if pojo.isComponent()>
@${pojo.importType("javax.persistence.Embeddable")}
<#else>
@${pojo.importType("javax.persistence.Entity")}
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
@${pojo.importType("javax.persistence.Table")}(name = "${pojo.toUpperCase(clazz.table.name)}"<#assign uniqueConstraint=pojo.generateAnnTableUniqueConstraint()><#if uniqueConstraint?has_content>, uniqueConstraints = ${uniqueConstraint} 
</#if>)
</#if>
</#if>