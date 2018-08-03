package com.picc.platform.lob.service.facade;

import com.picc.platform.lob.vo.LobTestVo;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;

@Rpc
public interface LobTestService extends BaseCrudService<LobTestVo, Long> {

}
