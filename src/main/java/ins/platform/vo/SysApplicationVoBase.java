package ins.platform.vo;

// Generated by Hibernate Tools 3.2.5 (sinosoft version), Don't modify!
import java.util.Date;


/**
 * Vo Base Class of PO SysApplication
 */ 
public class SysApplicationVoBase implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private Long id;
	private String systemCode;
	private String cname;
	private String ename;
	private String description;
	private byte[] deletedFlag;
	private String homeUrl;
	private String techArchitecture;
	private String developentTeam;
	private Date onlineTime;
	private String owner;
	private String backupOwner;
	private String databaseName;
	private String databaseType;
	private String dbserverPath;
	private String svnPath;
	private String createdUser;
	private Date createdDate;
	private String updatedUser;
	private Date updatedDate;
	private String validateType;
	private String loginOptions;
	private byte[] addRole;
	private byte[] roleAuth;
	private byte[] resAuth;
	private byte[] storeDeptAuth;
	private byte[] groupAuth;
	private byte[] storeOwner;
	private byte[] appLock;

    protected SysApplicationVoBase() {
	
    }

    
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSystemCode() {
		return this.systemCode;
	}

	public void setSystemCode(String systemCode) {
		this.systemCode = systemCode;
	}

	public String getCname() {
		return this.cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getEname() {
		return this.ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public byte[] getDeletedFlag() {
		return this.deletedFlag;
	}

	public void setDeletedFlag(byte[] deletedFlag) {
		this.deletedFlag = deletedFlag;
	}

	public String getHomeUrl() {
		return this.homeUrl;
	}

	public void setHomeUrl(String homeUrl) {
		this.homeUrl = homeUrl;
	}

	public String getTechArchitecture() {
		return this.techArchitecture;
	}

	public void setTechArchitecture(String techArchitecture) {
		this.techArchitecture = techArchitecture;
	}

	public String getDevelopentTeam() {
		return this.developentTeam;
	}

	public void setDevelopentTeam(String developentTeam) {
		this.developentTeam = developentTeam;
	}

	public Date getOnlineTime() {
		return this.onlineTime;
	}

	public void setOnlineTime(Date onlineTime) {
		this.onlineTime = onlineTime;
	}

	public String getOwner() {
		return this.owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public String getBackupOwner() {
		return this.backupOwner;
	}

	public void setBackupOwner(String backupOwner) {
		this.backupOwner = backupOwner;
	}

	public String getDatabaseName() {
		return this.databaseName;
	}

	public void setDatabaseName(String databaseName) {
		this.databaseName = databaseName;
	}

	public String getDatabaseType() {
		return this.databaseType;
	}

	public void setDatabaseType(String databaseType) {
		this.databaseType = databaseType;
	}

	public String getDbserverPath() {
		return this.dbserverPath;
	}

	public void setDbserverPath(String dbserverPath) {
		this.dbserverPath = dbserverPath;
	}

	public String getSvnPath() {
		return this.svnPath;
	}

	public void setSvnPath(String svnPath) {
		this.svnPath = svnPath;
	}

	public String getCreatedUser() {
		return this.createdUser;
	}

	public void setCreatedUser(String createdUser) {
		this.createdUser = createdUser;
	}

	public Date getCreatedDate() {
		return this.createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public String getUpdatedUser() {
		return this.updatedUser;
	}

	public void setUpdatedUser(String updatedUser) {
		this.updatedUser = updatedUser;
	}

	public Date getUpdatedDate() {
		return this.updatedDate;
	}

	public void setUpdatedDate(Date updatedDate) {
		this.updatedDate = updatedDate;
	}

	public String getValidateType() {
		return this.validateType;
	}

	public void setValidateType(String validateType) {
		this.validateType = validateType;
	}

	public String getLoginOptions() {
		return this.loginOptions;
	}

	public void setLoginOptions(String loginOptions) {
		this.loginOptions = loginOptions;
	}

	public byte[] getAddRole() {
		return this.addRole;
	}

	public void setAddRole(byte[] addRole) {
		this.addRole = addRole;
	}

	public byte[] getRoleAuth() {
		return this.roleAuth;
	}

	public void setRoleAuth(byte[] roleAuth) {
		this.roleAuth = roleAuth;
	}

	public byte[] getResAuth() {
		return this.resAuth;
	}

	public void setResAuth(byte[] resAuth) {
		this.resAuth = resAuth;
	}

	public byte[] getStoreDeptAuth() {
		return this.storeDeptAuth;
	}

	public void setStoreDeptAuth(byte[] storeDeptAuth) {
		this.storeDeptAuth = storeDeptAuth;
	}

	public byte[] getGroupAuth() {
		return this.groupAuth;
	}

	public void setGroupAuth(byte[] groupAuth) {
		this.groupAuth = groupAuth;
	}

	public byte[] getStoreOwner() {
		return this.storeOwner;
	}

	public void setStoreOwner(byte[] storeOwner) {
		this.storeOwner = storeOwner;
	}

	public byte[] getAppLock() {
		return this.appLock;
	}

	public void setAppLock(byte[] appLock) {
		this.appLock = appLock;
	}
}
