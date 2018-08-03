<#if ejb3>
<#if pojo.hasIdentifierProperty()>
<#if property.equals(clazz.identifierProperty)>
${pojo.generateAnnIdGenerator()}
<#if pojo.useDefaultIdGenerator()>
<#if property.getName().equalsIgnoreCase("id")>
	@${pojo.importType("javax.persistence.GeneratedValue")}(generator = "generator")
	@${pojo.importType("org.hibernate.annotations.GenericGenerator")}(name = "generator", strategy = "native")
	
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