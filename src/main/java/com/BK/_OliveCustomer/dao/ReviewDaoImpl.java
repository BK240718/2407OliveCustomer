package com.BK._OliveCustomer.dao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.Map;

@Repository
@RequiredArgsConstructor
@Slf4j
public class ReviewDaoImpl implements ReviewDao {

    private final SqlSession session;

    @Override
    public int insertReview(Map<String, Object> params) {

        log.info("ReviewDaoImpl insertReview Start");
        int reviewId = 0;

        try {
            // CALL 프로시저 실행
            session.selectOne("insertReview", params);
            // OUT 파라미터에서 reviewId 값을 가져옴
            // BigDecimal: NUMBER 타입은 Java에서는 BigDecimal로 반환되며,
            // 이를 Integer로 직접 캐스팅하면 오류가 발생
            BigDecimal bdreviewId = (BigDecimal) params.get("P_REVIEWID");
            reviewId = bdreviewId.intValue();
            log.info("ReviewDaoImpl insertReview reviewId = {}", reviewId);
        } catch (Exception e) {
            log.info("ReviewDaoImpl insertReview e.getMessage() = {}", e.getMessage());
        }

        return reviewId;
    }
}
