package com.picc.platform.lob.service.spring;

import org.springframework.stereotype.Service;

import com.picc.platform.lob.service.facade.LobTestService;
import com.picc.platform.lob.vo.LobTestVo;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;
import ins.platform.schema.LobTest;

@Rpc
@Service(value = "lobTestService")
public class LobTestServiceSpringImpl extends AbstractBaseCrudServiceSpringImpl<LobTest, Long, LobTestVo, Long>
		implements LobTestService {


}
