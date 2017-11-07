package com.neusoft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.domain.Review;
import com.neusoft.mapper.ReviewMapper;
import com.neusoft.service.IReviewService;
@Service
public class ReviewService implements IReviewService{
	@Autowired
	private ReviewMapper rm;
	
	
	@Override
	public int addReview(Review review) {
		// TODO Auto-generated method stub
		return rm.addReview(review);
	}


	@Override
	public List<Review> getAllReviewBySubmitid(int submitid) {
		// TODO Auto-generated method stub
		return rm.getAllReviewBySubmitid(submitid);
	}


	@Override
	public int getCountBySubmitid(int submitid) {
		// TODO Auto-generated method stub
		return rm.getCountBySubmitid(submitid);
	}


	@Override
	public int getAvgScoreBySubmitid(int submitid) {
		// TODO Auto-generated method stub
		return rm.getAvgScoreBySubmitid(submitid);
	}


	@Override
	public int getTaskAvgScore(int taskid) {
		// TODO Auto-generated method stub
		return rm.getTaskAvgScore(taskid);
	}


	@Override
	public int getReviewCountsByUserid(int userid) {
		// TODO Auto-generated method stub
		return rm.getReviewCountsByUserid(userid);
	}

}
