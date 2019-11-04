package com.yell.base.netty;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.corundumstudio.socketio.HandshakeData;
import com.corundumstudio.socketio.SocketIOClient;

/**
 * socketio client 操作组件
 * @author haishui211
 */
@Component
public class SocketClientComponent {

    private Map<String, SocketIOClient> clients = new HashMap<String, SocketIOClient>();

    /**
     * 保存socketio client 客户端
     * @param userId
     * @param client
     */
    public void storeClientId(SocketIOClient client) {
        clients.put(getKeyFromClient(client), client);
    }

    /**
     * 移除socketio client 客户端
     */
    public void delClientId(SocketIOClient client) {
        clients.remove(getKeyFromClient(client));
    }

    /**
     * 给指定client发送指定事件的数据
     * @param businessName
     * @param data
     */
    public void send(String userId,String vid,String businessName, Map<String, Object> data) {
        SocketIOClient client = clients.get(getKey(userId,vid));
        if(client != null) {
            client.sendEvent(businessName, data);
        }
    }

    private String getKeyFromClient(SocketIOClient client) {
        HandshakeData data = client.getHandshakeData();
        String userId = data.getSingleUrlParam("userId");
        String vid = data.getSingleUrlParam("vid");
        return getKey(userId,vid);
    }

    private String getKey(String userId,String vid) {
        return "userId:" + userId+"vid:"+vid;
    }
}
