/******************************************************************************
* CREATETIME : 2014年6月20日 上午11:06:58
******************************************************************************/
package ins.platform.common.vo;

/**
 * ZTreeNodeVo
 */
public class ZTreeNodeVo {

	private String id;
	private String pId;
	private String name;
	private String fullName;
	private Integer level;
	private String actionUrl;
	private boolean open;
	private String isParent;

	private String moveType;
	private Integer targetId;
	private Integer targetPId;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPId() {
		return pId;
	}

	public void setPId(String pId) {
		this.pId = pId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public Integer getLevel() {
		return level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}

	public String getActionUrl() {
		return actionUrl;
	}

	public void setActionUrl(String actionUrl) {
		this.actionUrl = actionUrl;
	}

	public boolean isOpen() {
		return open;
	}

	public void setOpen(boolean open) {
		this.open = open;
	}

	public String getIsParent() {
		return isParent;
	}

	public void setIsParent(String isParent) {
		this.isParent = isParent;
	}

	public String getMoveType() {
		return moveType;
	}

	public void setMoveType(String moveType) {
		this.moveType = moveType;
	}

	public Integer getTargetId() {
		return targetId;
	}

	public void setTargetId(Integer targetId) {
		this.targetId = targetId;
	}

	public Integer getTargetPId() {
		return targetPId;
	}

	public void setTargetPId(Integer targetPId) {
		this.targetPId = targetPId;
	}

}
