package com.mao.infocrawler.model.dao;

import java.util.List;

import com.mao.infocrawler.model.dao.common.IOperations;
import com.mao.infocrawler.model.entity.Answers;
import com.mao.infocrawler.model.entity.Question;

public interface AnswersDao extends IOperations<Answers> {

    //让所有的DAO都实现基本的操作接口IOperations
    //除了实现IOperations中的基本操作之外，特定的DAO要实现其他操作可以在对应的接口DAO中定义方法
	 List<Answers> findAllByTime(final String sql);
	 
}
