package ins.platform.common.vo;

public class SpcTreeVo {

	private Integer id;
	private Integer pId;
	private String name;
	private String nodeType;
	private Integer targetId;
	private Integer targetPId;
	private String pageCode;
	private String targetNodeType;
	private Boolean open;
	private Boolean drop;
	private Boolean drag;
	private String moveType;

	public String getTargetNodeType() {
		return targetNodeType;
	}

	public void setTargetNodeType(String targetNodeType) {
		this.targetNodeType = targetNodeType;
	}

	public String getMoveType() {
		return moveType;
	}

	public void setMoveType(String moveType) {
		this.moveType = moveType;
	}

	public Boolean getOpen() {
		return open;
	}

	public void setOpen(Boolean open) {
		this.open = open;
	}

	public Boolean getDrop() {
		return drop;
	}

	public void setDrop(Boolean drop) {
		this.drop = drop;
	}

	public Boolean getDrag() {
		return drag;
	}

	public void setDrag(Boolean drag) {
		this.drag = drag;
	}

	public String getPageCode() {
		return pageCode;
	}

	public void setPageCode(String pageCode) {
		this.pageCode = pageCode;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPId() {
		return pId;
	}

	public void setPId(Integer pId) {
		this.pId = pId;
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

	public String getNodeType() {
		return nodeType;
	}

	public void setNodeType(String nodeType) {
		this.nodeType = nodeType;
	}
}
