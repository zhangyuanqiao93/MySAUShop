package cn.edu.sau.javashop.core.model.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import cn.edu.sau.javashop.core.model.Brand;
import org.springframework.jdbc.core.RowMapper;

import cn.edu.sau.eop.sdk.utils.UploadUtil;

/**
 * 品牌Mapper<br>
 * 会将本地文件存储的图片地址前缀替换为静态资源服务器地址。

 */
public class BrandMapper implements RowMapper {

	public Object mapRow(ResultSet rs, int arg1) throws SQLException {
		Brand brand = new Brand();
		brand.setBrand_id(rs.getInt("brand_id"));
		brand.setBrief(rs.getString("brief"));
		String logo = rs.getString("logo");
		if(logo!=null){
			logo  =UploadUtil.replacePath(logo);
		}
		brand.setLogo(logo);
		brand.setName(rs.getString("name"));
		brand.setUrl(rs.getString("url"));
		return brand;
	}

}
