package cn.edu.sau.app.base.core.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import cn.edu.sau.eop.sdk.utils.UploadUtil;

/**
 * 友情连接Mapper
 */
public class FriendsLinkMapper implements RowMapper {

	public Object mapRow(ResultSet rs, int arg1) throws SQLException {
		FriendsLink friendsLink = new FriendsLink();
		friendsLink.setLink_id(rs.getInt("link_id"));
		String logo  = rs.getString("logo");
		if(logo!=null) logo  =UploadUtil.replacePath(logo);
		friendsLink.setLogo(logo);
		friendsLink.setName(rs.getString("name"));
		friendsLink.setSort(rs.getInt("sort"));
		friendsLink.setUrl(rs.getString("url"));
		return friendsLink;
	}

}
