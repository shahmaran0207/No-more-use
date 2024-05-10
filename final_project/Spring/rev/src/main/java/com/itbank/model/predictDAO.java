package com.itbank.model;

import org.apache.ibatis.annotations.Select;

import com.itbank.model.vo.DataVO;
import com.itbank.model.vo.TableVO;

public interface predictDAO {

	@Select("select predict_value from ${table_name} where idx = #{month}")
	int search(TableVO tv);
	
	// #{table_name} -> board -> 'board'
	
	
	// ${table_name} -> board
	
	
	@Select("select * from ${table_name}")
	DataVO selectOne(String table_name);
	
}
