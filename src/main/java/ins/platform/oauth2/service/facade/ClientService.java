package ins.platform.oauth2.service.facade;
import java.util.List;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;
import ins.platform.oauth2.vo.Oauth2ClientVo;

/**
 * <p>User: Zhang Kaitao
 * <p>Date: 14-1-28
 * <p>Version: 1.0
 */
@Rpc
public interface ClientService extends BaseCrudService<Oauth2ClientVo, Long> {

    public Oauth2ClientVo createClient(Oauth2ClientVo client);
    public Oauth2ClientVo updateClient(Oauth2ClientVo client);
    public void deleteClient(Long clientId);

    public Oauth2ClientVo findOne(Long clientId);

    public List<Oauth2ClientVo> findAll();

    public Oauth2ClientVo findByClientId(String clientId);
    public Oauth2ClientVo findByClientSecret(String clientSecret);

}