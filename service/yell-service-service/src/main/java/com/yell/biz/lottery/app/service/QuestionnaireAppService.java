package com.yell.biz.lottery.app.service;

import com.yell.biz.lottery.app.dto.QuestionnaireDto;
import com.yell.biz.lottery.domain.entity.Questionnaire;
import com.yell.biz.lottery.domain.service.QuestionnaireDomainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

/**
* @Title: LotteryDomainService
* @Description: 扫描者基本信息
* @Author: Away
* @Date: 2018/5/23 14:38
* @Copyright:
* @Version: V1.0
*/
@Service
@Transactional
public class QuestionnaireAppService {

    private final QuestionnaireDomainService questionnaireDomainService;

    @Autowired
    public QuestionnaireAppService(QuestionnaireDomainService questionnaireDomainService) {
        this.questionnaireDomainService = questionnaireDomainService;
    }

    public QuestionnaireDto saveOrUpdate(QuestionnaireDto toSaveData) throws Exception{
        return this.questionnaireDomainService.saveOrUpdateData(toSaveData, Questionnaire.class);
    }
}
