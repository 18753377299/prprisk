package ins.platform.menu.vo;

import java.io.Serializable;

public class MenuConfigVo implements Serializable {
	private static final long serialVersionUID = 1L;
	private Long id;
	private Long pId;
	private String name;
	private Integer menuLevel;
	private String actionUrl;
	private Long targetId;
	private Long targetPId;
	private String moveType;
	private Integer targetMenuLevel;
	private String isParent;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getpId() {
		return pId;
	}

	public void setpId(Long pId) {
		this.pId = pId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getMenuLevel() {
		return menuLevel;
	}

	public void setMenuLevel(Integer menuLevel) {
		this.menuLevel = menuLevel;
	}

	public String getActionUrl() {
		return actionUrl;
	}

	public void setActionUrl(String actionUrl) {
		this.actionUrl = actionUrl;
	}

	public Long getTargetId() {
		return targetId;
	}

	public void setTargetId(Long targetId) {
		this.targetId = targetId;
	}

	public Long getTargetPId() {
		return targetPId;
	}

	public void setTargetPId(Long targetPId) {
		this.targetPId = targetPId;
	}

	public String getMoveType() {
		return moveType;
	}

	public void setMoveType(String moveType) {
		this.moveType = moveType;
	}

	public Integer getTargetMenuLevel() {
		return targetMenuLevel;
	}

	public void setTargetMenuLevel(Integer targetMenuLevel) {
		this.targetMenuLevel = targetMenuLevel;
	}

	public String getIsParent() {
		return isParent;
	}

	public void setIsParent(String isParent) {
		this.isParent = isParent;
	}
}
