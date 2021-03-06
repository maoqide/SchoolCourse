package com.mao.infocrawler.model.dao;

import java.util.List;

import com.mao.infocrawler.model.dao.common.IOperations;
import com.mao.infocrawler.model.entity.Question;
import com.mao.infocrawler.model.entity.Resoinfo;

public interface QAndADao extends IOperations<Question> {

    //让所有的DAO都实现基本的操作接口IOperations
    //除了实现IOperations中的基本操作之外，特定的DAO要实现其他操作可以在对应的接口DAO中定义方法
	 List<Question> findAllByTime(final String sql);
	 
	 int findAnswerCount (final String sql);
	 
}
