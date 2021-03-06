package ins.platform.schema;

// Generated by Hibernate Tools 3.2.5 (sinosoft version), Don't modify!
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

/**
 * POJO Class SysTransConfig
 */
@Entity
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
@Table(name = "SYS_TRANS_CONFIG")
public class SysTransConfig implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private String transType;
	private String transName;
	private String selectTable;
	private String selectCode;
	private String selectName;
	private String selectWhere;
	private String pararmValue;
	private String orderBy;
	private String remark;
	@Id
	@Column(name = "TRANS_TYPE", unique = true, nullable = false, length=30)
	public String getTransType() {
		return this.transType;
	}

	public void setTransType(String transType) {
		this.transType = transType;
	}
	@Column(name = "TRANS_NAME", length=50)
	public String getTransName() {
		return this.transName;
	}

	public void setTransName(String transName) {
		this.transName = transName;
	}
	@Column(name = "SELECT_TABLE", length=30)
	public String getSelectTable() {
		return this.selectTable;
	}

	public void setSelectTable(String selectTable) {
		this.selectTable = selectTable;
	}
	@Column(name = "SELECT_CODE", length=30)
	public String getSelectCode() {
		return this.selectCode;
	}

	public void setSelectCode(String selectCode) {
		this.selectCode = selectCode;
	}
	@Column(name = "SELECT_NAME", length=50)
	public String getSelectName() {
		return this.selectName;
	}

	public void setSelectName(String selectName) {
		this.selectName = selectName;
	}
	@Column(name = "SELECT_WHERE", length=100)
	public String getSelectWhere() {
		return this.selectWhere;
	}

	public void setSelectWhere(String selectWhere) {
		this.selectWhere = selectWhere;
	}
	@Column(name = "PARARM_VALUE")
	public String getPararmValue() {
		return this.pararmValue;
	}

	public void setPararmValue(String pararmValue) {
		this.pararmValue = pararmValue;
	}
	@Column(name = "ORDER_BY", length=30)
	public String getOrderBy() {
		return this.orderBy;
	}

	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}
	@Column(name = "REMARK", length=100)
	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
}
