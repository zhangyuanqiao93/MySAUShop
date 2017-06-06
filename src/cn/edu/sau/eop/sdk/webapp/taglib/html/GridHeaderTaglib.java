package cn.edu.sau.eop.sdk.webapp.taglib.html;

import cn.edu.sau.eop.sdk.webapp.taglib.HtmlTaglib;

public class GridHeaderTaglib extends HtmlTaglib {
	
	
	protected String postStart() {
		return "<thead><tr>";
	}
	
	
	protected String postEnd() {
		return "</tr></thead>";
	}
}
