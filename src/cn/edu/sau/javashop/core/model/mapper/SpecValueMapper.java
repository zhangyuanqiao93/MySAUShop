package cn.edu.sau.javashop.core.model.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import cn.edu.sau.eop.sdk.utils.UploadUtil;
import cn.edu.sau.javashop.core.model.SpecValue;

/**
 * 规格值Mapper
 * 将本地中径替换为静态资源服务器地址

 */
public class SpecValueMapper implements RowMapper {

	public Object mapRow(ResultSet rs, int arg1) throws SQLException {
		SpecValue specValue = new SpecValue();
		specValue.setSpec_id(rs.getInt("spec_id"));
		String spec_img = rs.getString("spec_image");
		if( spec_img!=null ){
			spec_img  =UploadUtil.replacePath(spec_img);
		}
		specValue.setSpec_image(spec_img);
		specValue.setSpec_order(rs.getInt("spec_order"));
		specValue.setSpec_type(rs.getInt("spec_type"));
		specValue.setSpec_value(rs.getString("spec_value"));
		specValue.setSpec_value_id(rs.getInt("spec_value_id"));
		return specValue;
	}

}
