package com.itbank.predict_money.model;

import com.itbank.predict_money.vo.TableVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;


@Mapper
public interface predictDAO {

	@Select("SELECT predict_value FROM ${table_name} WHERE idx = #{month}")
	int search(TableVO tv);

}