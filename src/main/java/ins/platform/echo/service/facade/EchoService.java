package ins.platform.echo.service.facade;

import java.util.Date;

import ins.framework.rpc.annotation.Rpc;
import ins.platform.echo.vo.EchoVo;

/**
 * 示例用的EchoService接口
 * 
 */
@Rpc
public interface EchoService {
	/**
	 * 传入字符串回显字符串
	 * 
	 * @param value
	 *            传入value
	 * @return 回显name
	 */
	public String echoStringByString(String value);

	/**
	 * 传入字符串和日期回显字符串
	 * 
	 * @param value
	 *            传入value
	 * @param date
	 *            传入date
	 * @return 回显name
	 */
	public String echoStringByStringAndDate(String value, Date date);

	/**
	 * 传入字符串回显对象
	 * 
	 * @param value
	 *            传入value
	 * @return 回显对象
	 */
	public EchoVo echoObjectByString(String value);

	/**
	 * 传入对象回显字符串
	 * 
	 * @param echo
	 *            Echo对象
	 * @return 回显字符串
	 */
	public String echoStringByObject(EchoVo echo);

	/**
	 * 传入对象回显对象
	 * 
	 * @param echo
	 *            Echo对象
	 * @return 回显对象
	 */
	public EchoVo echoObjectByObject(EchoVo echo);
}