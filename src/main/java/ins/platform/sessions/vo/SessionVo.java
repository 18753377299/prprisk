package ins.platform.sessions.vo;

import java.io.Serializable;
import java.util.Date;

import ins.platform.vo.SysUserVo;

public class SessionVo {

	private Serializable id;
	private String host;
	private Date lastAccessTime;
	private Date startTimesStamp;
	private long timeout;
	private SysUserVo sysUserVo;

	public Serializable getId() {
		return id;
	}

	public void setId(Serializable id) {
		this.id = id;
	}

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public Date getLastAccessTime() {
		return lastAccessTime;
	}

	public void setLastAccessTime(Date lastAccessTime) {
		this.lastAccessTime = lastAccessTime;
	}

	public Date getStartTimesStamp() {
		return startTimesStamp;
	}

	public void setStartTimesStamp(Date startTimesStamp) {
		this.startTimesStamp = startTimesStamp;
	}

	public long getTimeout() {
		return timeout;
	}

	public void setTimeout(long timeout) {
		this.timeout = timeout;
	}

	public SysUserVo getSysUserVo() {
		return sysUserVo;
	}

	public void setSysUserVo(SysUserVo sysUserVo) {
		this.sysUserVo = sysUserVo;
	}

}
