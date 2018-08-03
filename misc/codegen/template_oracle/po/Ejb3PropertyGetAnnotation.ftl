<#if ejb3>
<#if pojo.hasIdentifierProperty()>
<#if property.equals(clazz.identifierProperty)>
${pojo.generateAnnIdGenerator()}
<#if pojo.useDefaultIdGenerator()>
<#if property.getName().equalsIgnoreCase("id")>
	@${pojo.importType("javax.persistence.SequenceGenerator")}(name = "generator", allocationSize = 1, sequenceName = "SEQ_${pojo.toUpperCase(clazz.table.name)}")
	@${pojo.importType("javax.persistence.GeneratedValue")}(strategy = SEQUENCE, generator = "generator")
</#if>	
</#if>	
</#if>
</#if>
<#if c2h.isOneToOne(property)>
	${pojo.generateOneToOneAnnotation(property, cfg)}
<#elseif c2h.isManyToOne(property)>
	${pojo.generateManyToOneAnnotation(property)}<#--TODO support optional and targetEntity-->
${pojo.generateJoinColumnsAnnotation(property, cfg)}
<#elseif c2h.isCollection(property)>
    ${pojo.generateCollectionAnnotation(property, cfg)}
<#else>
<#if pojo.hasBasicAnnotation(property)>
${pojo.generateBasicAnnotation(property)}
${pojo.generateAnnColumnAnnotation(property)}
<#else>
${pojo.generateAnnColumnAnnotation(property)}
</#if>
</#if>
</#if>