package com.BK._OliveCustomer.dao;

import com.BK._OliveCustomer.dto.ColorVote;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Slf4j
@RequiredArgsConstructor
public class ColorVoteDaoImpl implements ColorVoteDao {

    private final SqlSession session;

    @Override
    public int insertColorVote(ColorVote colorVote) {

        log.info("ColorVoteDaoImpl insertColorVote Start");
        int insertResult = 0;

        try {
            insertResult = session.insert("insertColorVote", colorVote);
            log.info("ColorVoteDaoImpl insertColorVote insertResult = {}", insertResult);
        } catch (Exception e) {
            log.info("ColorVoteDaoImpl insertColorVote e.getMessage() = {}", e.getMessage());
        }

        return insertResult;
    }
}
