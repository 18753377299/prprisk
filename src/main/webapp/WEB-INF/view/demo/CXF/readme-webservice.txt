2013-3-27 ���CXF��ʾ
��˵����
  CXF ������ Services �Ĵ�����ͬʱ���̳��� XFire ��ͳ��һ��������Ȼ�غ� Spring �����޷켯�ɡ�
  ����Ŀǰ����ǻ���Spring2.5�������ʾѡ����CXF2.2�汾��
  * ��ʾ���� 
    1.�������� 
    2.����com.picc.platform.demo.webservice.client.TestCXFHelloworldImpl
    POC/test/functional/com/picc/platform/demo/webservice/client/TestCXFHelloworldImpl.java

���漰���ݡ�
һ�� webapp/WEB-INF/web.xml
  * �����������ݣ�
        <servlet>
                <servlet-name>CXFServlet</servlet-name>
                <servlet-class>org.apache.cxf.transport.servlet.CXFServlet</servlet-class>
        </servlet>
        <servlet-mapping>
                <servlet-name>CXFServlet</servlet-name>
                <url-pattern>/services/*</url-pattern>
        </servlet-mapping>
        
        *�������ݱ仯
        springSecurityFilterChain ԭmapping������/* ��Ϊ *.do *.jsp /*Servlet
        (�ݽ�webservice���ڰ�ȫ����֮���Ա���ʾ����)
        
        <filter-mapping>
                <filter-name>springSecurityFilterChain</filter-name>
                <url-pattern>*.do</url-pattern>
        </filter-mapping>
        <filter-mapping>
                <filter-name>springSecurityFilterChain</filter-name>
                <url-pattern>*.jsp</url-pattern>
        </filter-mapping>
        <filter-mapping>
                <filter-name>springSecurityFilterChain</filter-name>
                <url-pattern>/*Servlet</url-pattern>
        </filter-mapping>
        
        * ԭXFire������ݿ���ȥ��
        
���� src/resources/spring/applicationContext-demo.xml
        <!-- CXF Server -->
        <import resource="classpath:spring/components/applicationContext-cxf-soap-server.xml" />

���� ���������ļ�
   �����
   src/resources/spring/components/applicationContext-cxf-soap-server.xml
   src/java/com/picc/platform/demo/webservice/server/soap/CXFHelloWorldIntf.java
   src/java/com/picc/platform/demo/webservice/server/soap/CXFHelloWorldImpl.java
   �ͻ���
   src/resources/spring/components/applicationContext-demo-cxf-client.xml
   test/functional/com/picc/platform/demo/webservice/client/CXFHelloWorldIntf.java
   test/functional/com/picc/platform/demo/webservice/client/TestCXFHelloworldImpl.java

   ����jar
antlr-2.7.6.jar -> antlr-2.7.6.jar antlr-3.2.jar  antlr-runtime-3.2.jar
jaxb-api-2.0.jar -> jaxb-api-2.2.3.jar
XmlSchema-1.1.jar -> XmlSchema-1.4.7.jar
wsdl4j-1.6.1.jar -> wsdl4j-1.6.2.jar

  ����jar
cxf-2.2.12.jar
geronimo-activation_1.1_spec-1.1.jar
geronimo-annotation_1.0_spec-1.1.1.jar
geronimo-javamail_1.4_spec-1.7.1.jar
geronimo-stax-api_1.0_spec-1.0.1.jar
jaxb-impl-2.2.4-1.jar

��CXF2.2.12������ԭʼ˵����
The following jars are required for all CXF usage:
- cxf.jar
- commons-logging.jar
- geronimo-activation.jar (Or the Sun equivalent) [6]
- geronimo-annotation.jar (Or the Sun equivalent) [6]
- geronimo-javamail.jar (Or the Sun equivalent) [6]
  (MAY be able to remove javamail if you don't use any MTOM/SAAJ type things)
- geronimo-stax-api.jar (Or the Sun equivalent) [6]
- neethi.jar
- jaxb-api.jar  [6]
- jaxb-impl.jar (this is a [6] for normal runtime, but is required for 
                 tooling and the dynamic clients)
- XmlSchema.jar
- wstx-asl.jar  [6] or another StAX implementation
- wsdl4j.jar

For JAX-WS support:
- geronimo-ws-metadata.jar [6]
- geronimo-jaxws_2.1_spec-1.0.jar (Or the Sun equivalent) [6]
- saaj-api.jar [6]
- saaj-impl.jar [6]
- asm.jar (semi-optional, helps with performance of wrapper types and is 
        required when adding JAXB annotations onto the SEI methods and 
        parameters.)

        
For XML Configuration support:
- aopalliance.jar
- spring-beans.jar
- spring-context.jar
- spring-core.jar
- spring.web.jar
- FastInfoset.jar