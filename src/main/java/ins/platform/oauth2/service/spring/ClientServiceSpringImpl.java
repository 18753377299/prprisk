package ins.platform.oauth2.service.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ins.framework.dao.database.DatabaseDao;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;
import ins.framework.utils.Beans;
import ins.platform.oauth2.service.facade.ClientService;
import ins.platform.oauth2.vo.Oauth2ClientVo;
import ins.platform.schema.Oauth2Client;

import java.util.List;
import java.util.UUID;

/**
 * <p>User: Zhang Kaitao
 * <p>Date: 14-2-17
 * <p>Version: 1.0
 */
@Rpc
@Service(value="clientService")
public class ClientServiceSpringImpl  extends AbstractBaseCrudServiceSpringImpl<Oauth2Client, Long, Oauth2ClientVo, Long> implements ClientService{
    @Autowired
    private DatabaseDao databaseDao;

    @Override
    public Oauth2ClientVo createClient(Oauth2ClientVo client) {

        client.setClientId(UUID.randomUUID().toString());
        client.setClientSecret(UUID.randomUUID().toString());
        this.save(client);
        return client;
    }

    @Override
    public Oauth2ClientVo updateClient(Oauth2ClientVo client) {
        this.update(client);
        return client;
    }

    @Override
    public void deleteClient(Long clientId) {
        this.deleteByPK(clientId);
    }

    @Override
    public Oauth2ClientVo findOne(Long clientId) {
        return this.findByPK(clientId);
    }

    @Override
    public List<Oauth2ClientVo> findAll() {
        return this.findAll();
    }

    @Override
    public Oauth2ClientVo findByClientId(String clientId) {
    	List<Oauth2Client> list = databaseDao.findAllByHql(Oauth2Client.class,"from  Oauth2Client where clientId=?", clientId);
    	Oauth2ClientVo clientVo = new Oauth2ClientVo();
    	if(list!=null&&list.size()>0){
    		Oauth2Client client = list.get(0);
    		Beans.copy().from(client).to(clientVo);
    	}
    	return clientVo;
    }

    @Override
    public Oauth2ClientVo findByClientSecret(String clientSecret) {
    	List<Oauth2Client> list = databaseDao.findAllByHql(Oauth2Client.class,"from  Oauth2Client where clientSecret=?", clientSecret);
    	Oauth2ClientVo clientVo = new Oauth2ClientVo();
    	if(list!=null&&list.size()>0){
    		Oauth2Client client = list.get(0);
    		Beans.copy().from(client).to(clientVo);
    	}
    	return clientVo;
    }
}