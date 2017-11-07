package com.neusoft.service;

import java.util.List;

import com.neusoft.domain.Review;

public interface IReviewService {
	
	
	//���review
	int addReview(Review review);
	
	//�鿴ĳһ�û��ύ�����ȫ��review
	List<Review> getAllReviewBySubmitid(int submitid);
	
	//�鿴ĳһ�û��ύ�����review����
	int getCountBySubmitid(int submitid);
	
	//�鿴ĳһ�û��ύ�����ƽ���÷�
	int getAvgScoreBySubmitid(int submitid);
	
	//�鿴ĳ�������ƽ���÷�
	int getTaskAvgScore(int taskid);
	
	//�õ�ĳһ�û���ȫ��review����
	int getReviewCountsByUserid(int userid);

}
