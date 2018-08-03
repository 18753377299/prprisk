package ins.platform.common.web.util;

public class CompanyUtils {
	
	public static String findParentComCode(String comPath){
		String[] comCodes = comPath.split("/");
		if(comPath.endsWith("/")){
			return comCodes[comCodes.length-1];
		}
		if(comCodes.length > 1){
			return comCodes[comCodes.length-2];
		}
		return comCodes[comCodes.length-1];
	}
	
	public static Integer getComLevel(String comPath){
		return comPath.split("/").length;
	}
	
	public static void main(String[] args){
		String a = CompanyUtils.findParentComCode("0002/0006/0010/");
		System.out.println(a);
	}

}
