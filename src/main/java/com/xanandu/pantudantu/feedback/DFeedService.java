package com.xanandu.pantudantu.feedback;

import java.util.List;

import com.xanandu.pantudantu.model.FeedModel;


public interface DFeedService {

	public String addFeed(String custname,String email,String mobno,String feedback,String resp,String dat);
	public List<FeedModel> listUser();
	public FeedModel getdetails(int id);
}
