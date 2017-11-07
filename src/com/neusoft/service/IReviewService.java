package com.neusoft.service;

import java.util.List;

import com.neusoft.domain.Review;

public interface IReviewService {
	
	
	//添加review
	int addReview(Review review);
	
	//查看某一用户提交任务的全部review
	List<Review> getAllReviewBySubmitid(int submitid);
	
	//查看某一用户提交任务的review数量
	int getCountBySubmitid(int submitid);
	
	//查看某一用户提交任务的平均得分
	int getAvgScoreBySubmitid(int submitid);
	
	//查看某个任务的平均得分
	int getTaskAvgScore(int taskid);
	
	//得到某一用户的全部review数量
	int getReviewCountsByUserid(int userid);

}
