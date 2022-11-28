package model.service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Message;
import model.dao.FitmateDao;

public class FitmateManager {
	private static FitmateManager manager = new FitmateManager();
	private FitmateDao fitmateDao;

	private FitmateManager() {
		try {
			fitmateDao = new FitmateDao();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static FitmateManager getInstance() {
		return manager;
	}

	public List<Message> getSendMessage(int senderId, int receiverId){ // sender에 내 id receiver에 상대 fitmate id
		return getSendMessage(senderId, receiverId);
	}
	
	public List<Message> getReceiveMessage(int senderId, int receiverId){ // sender에 상대 fitmate, receiver에 내 id
		return getReceiveMessage(senderId, receiverId);
	}
}