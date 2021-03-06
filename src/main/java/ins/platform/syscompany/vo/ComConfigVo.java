package ins.platform.syscompany.vo;

public class ComConfigVo {

	private static final long serialVersionUID = 1L;
	
	private Long id;
	private Long pId;
	private String name;
	private Integer level;
	private Long targetId;
	private Long targetPId;
	private String moveType;
	private Integer targetLevel;
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
	
	public Integer getLevel() {
		return level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}

	public Integer getTargetLevel() {
		return targetLevel;
	}

	public void setTargetLevel(Integer targetLevel) {
		this.targetLevel = targetLevel;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getIsParent() {
		return isParent;
	}

	public void setIsParent(String isParent) {
		this.isParent = isParent;
	}

}
