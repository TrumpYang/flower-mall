package com.henu.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.henu.domain.Cart;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.test.context.jdbc.Sql;

import java.math.BigDecimal;

public interface CartMapper extends BaseMapper<Cart> {
    //CRUD

//    查询  总共花了多少钱


    @Select("SELECT SUM( number*price)  FROM cart  where user_name=#{user_name} group by user_name=#{user_name}")
    BigDecimal queryTotalPrice(String userName);

//    查询总共的数量  聚合函数
    @Select("SELECT SUM(number) FROM cart where user_name=#{user_name}  group by user_name ")
    int queryTotalCunt(String userName);

    @Update("update cart set number=#{number}  where `user_name` = #{user_name} and `id` = #{id}")
    int updateItems(int number,String userName,int id);
}
