package com.itbank.model;

import org.apache.ibatis.annotations.Select;

import com.itbank.model.vo.TableVO;

public interface predictDAO {

	@Select("select predict_value from ${table_name} where idx = #{month}")
	int search(TableVO tv);
	
}
