package ins.platform.common.web.util;

import java.util.List;

import ins.platform.menu.service.facade.MenuService;
import ins.platform.vo.SmcMenuVo;

public class MenuShowUtils {
	
	public static StringBuffer before(SmcMenuVo vo,StringBuffer buff,List<SmcMenuVo> activeMenus){
		
		if(vo.getMenuLevel() == 1 && activeMenus.contains(vo)){
			buff.append("<li class='treeview active'><a href='#'>");
		}else if(vo.getMenuLevel() ==1 && !activeMenus.contains(vo)){
			buff.append("<li class='treeview'><a href='#'>");
		}else if(vo.getMenuLevel() != 1 && activeMenus.contains(vo)){
			buff.append("<li class='active'><a href='#'>");
		}else{
			buff.append("<li><a href='#'>");
		}
		
		if(vo.getStyle() == null || "".equals(vo.getStyle())){
			buff.append("<i class='fa fa-circle-o'></i>");
		} else {
			buff.append("<i class='" + vo.getStyle() + "'></i>");
		}
		
//		buff.append("<span>" + vo.getMenuCName());
		buff.append("<span>");
		buff.append(vo.getMenuCName());
		buff.append("</span><i class='fa fa-angle-left pull-right'></i></a>");
		buff.append("<ul class='treeview-menu'>");
		
		return buff;
	}
	
	public static StringBuffer after(SmcMenuVo vo,StringBuffer buff){
		buff.append("</ul></li>");
		return buff;
	}
	
	public static StringBuffer all(SmcMenuVo vo ,StringBuffer buff,String ctx,List<SmcMenuVo> activeMenus,MenuService menuService){
		
		if(activeMenus.contains(vo)) {
			buff.append("<li class='menuUrl active'>");
		}else{
			buff.append("<li class='menuUrl'>");
		}
		String bread = menuService.findMenuTitle(vo.getId(),"");
		if (vo.getTarget() != null && vo.getTarget().trim().length() > 0 ){
			
			buff.append("<a id='"
					+ vo.getId() + "' target='"
					+ vo.getTarget() +"' title='"+bread+"' href='/" 
					+ ctx
					+ vo.getActionURL() + "'>");
		}else {
			buff.append("<a id='"
					+ vo.getId() +"' title='"+bread+ "' href='/" 
					+ ctx
					+ vo.getActionURL() + "'>");
		}
		
		if(vo.getStyle() == null || "".equals(vo.getStyle())){
			buff.append("<i class='fa fa-circle-o'></i>");
		} else {
			buff.append("<i class='" + vo.getStyle() + "'></i>");
		}
		
//		buff.append(vo.getMenuCName() + "</a></li>");
		buff.append(vo.getMenuCName());
		buff.append("</a></li>");
		
		return buff;
	}
	
}
