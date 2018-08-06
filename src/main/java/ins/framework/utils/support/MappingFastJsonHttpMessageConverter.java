/*jadclipse*/// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.

package ins.framework.utils.support;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;

import java.io.*;
import java.nio.charset.Charset;
import java.util.List;

import org.springframework.http.*;
import org.springframework.http.converter.*;

public class MappingFastJsonHttpMessageConverter extends AbstractHttpMessageConverter
{

    public SerializerFeature[] getSerializerFeature()
    {
        return serializerFeature;
    }

    public void setSerializerFeature(SerializerFeature serializerFeature[])
    {
        this.serializerFeature = (SerializerFeature[])serializerFeature.clone();
    }

    public MappingFastJsonHttpMessageConverter()
    {
        super(new MediaType("application", "json", DEFAULT_CHARSET));
    }

    public boolean canRead(Class clazz, MediaType mediaType)
    {
        return true;
    }

    public boolean canWrite(Class clazz, MediaType mediaType)
    {
        return true;
    }

    protected boolean supports(Class clazz)
    {
        throw new UnsupportedOperationException();
    }

    @SuppressWarnings("unchecked")
	protected Object readInternal(Class clazz, HttpInputMessage inputMessage)
        throws IOException, HttpMessageNotReadableException{
    	
    	ByteArrayOutputStream baos = new ByteArrayOutputStream();
    	try {   		
            int i;
            while((i = inputMessage.getBody().read()) != -1) 
                baos.write(i);
            /*if(List.class.isAssignableFrom(clazz)){
            	return JSON.parseArray(baos.toString(), clazz);
            };
            List o = JSON.parseArray(baos.toString(), clazz);
            if(o!=null){
             return  o.get(0);
            }
            
            return null;*/
		} catch (Exception e) {
			e.printStackTrace();
		}        
        return JSON.parseObject(baos.toString(),clazz);
    }

    protected void writeInternal(Object o, HttpOutputMessage outputMessage)
        throws IOException, HttpMessageNotWritableException {
    	try {
			String jsonString = JSON.toJSONString(o, serializerFeature);
	        if(jsonString.charAt(0) == '"')
	            jsonString = jsonString.substring(0, jsonString.length() - 1).replaceFirst("\"", "").replaceAll("\\\\", "");
	        OutputStream out = outputMessage.getBody();
	        out.write(jsonString.getBytes(DEFAULT_CHARSET.name()));
	        out.flush();
		} catch (Exception e) {
			e.printStackTrace();
		}       
    }

    public static final Charset DEFAULT_CHARSET = Charset.forName("UTF-8");
    private SerializerFeature serializerFeature[];

}
