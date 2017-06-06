/*
============================================================================
��Ȩ���� (C) 2008-2010 �����ǻ㣨�������Ƽ����޹�˾������������Ȩ����
��վ��ַ��http://www.javamall.com.cn

����������ȫ���ء������û���ȨЭ�顷�Ļ����ϣ��������Ӧ�����κ���;��������
ҵ��;����������֧�������Ȩ��Ȩ���á��������û���ȨЭ�顷���Դ����ǵ���վ���أ�
������ķ��ɷ��գ���Ҳ������ϵ���ǻ������汾����ȨЭ�顣��δ����Ȩ����²�
����Գ���������κ���ʽ�κ�Ŀ�ĵ��޸Ļ��ٷ�����
============================================================================
*/
package cn.edu.sau.javashop.widget.goods.search;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.javashop.core.utils.UrlUtils;
import cn.edu.sau.framework.util.StringUtil;

public   class PagerHtmlBuilder {
	
	
	protected String url;
	private HttpServletRequest request ;
	private long pageNum;
	private long totalCount;
	private int pageSize;
	private long pageCount;
	private int showCount = 23;
	
	public PagerHtmlBuilder(long _pageNum,long _totalCount,int _pageSize){
		pageNum= _pageNum;
		totalCount= _totalCount;
		pageSize= _pageSize ;
		request =  ThreadContextHolder.getHttpRequest();
	}
	
	public String buildPageHtml() {
		this.init();
		StringBuffer pageStr = new StringBuffer("");
		pageStr.append("<table align=\"right\" class=\"pager\"><tbody><tr>" );
		pageStr.append(this.getHeadString());
		pageStr.append(this.getBodyString());
		pageStr.append(this.getFooterString());
		pageStr.append("</tr></tbody></table>");
		return pageStr.toString();
	}

	
	

	
	
	/**
	 * ���㲢��ʼ����Ϣ
	 *
	 */
	private  void init() {	
 
		pageSize = pageSize<1? 1 :pageSize;
		
		pageCount = totalCount / pageSize;
		pageCount = totalCount % pageSize > 0 ? pageCount + 1 : pageCount;
	
		pageNum = pageNum > pageCount ? pageCount : pageNum;
		pageNum = pageNum < 1 ? 1 : pageNum;
		
		 
		url =request.getServletPath();
		url = StringUtil.toUTF8(url);
		url= UrlUtils.getParamStr(url);
		url= UrlUtils.getExParamUrl(url, "page");
		
		//url = url.replaceAll("\\.html", ""); 
	 
	}
	
	
	 /**
	  * ���ɷ�ҳͷ�ִ�
	  * @return
	  */
	protected String getHeadString() {

		StringBuffer headString = new StringBuffer("");
		headString.append("<td>");
	


		if (pageNum > 1) { //���ǵ�һҳ������һҳ

			headString.append("<a title=\"��һҳ\"");
			headString.append(" onmouseout=\"this.className = 'prev'\" ");
			headString.append("  onmouseover=\"this.className = 'onprev'\" ");
			headString.append( " class=\"prev\" " );			
			headString.append(" href=\"");
			headString.append( getUrlStr (this.pageNum-1));
			headString.append("\" >��һҳ");
			headString.append("</a>\n");
 
		}else{//��һҳ
			headString.append("<span title=\"�Ѿ��ǵ�һҳ\" ");
			headString.append( " class=\"prev\"> �Ѿ��ǵ�һҳ</span>" );
		}
		headString.append("</td>");
		return headString.toString();
	}

	
	
	
	/**
	 * ���ɷ�ҳβ�ִ�
	 * @return
	 */
	protected String getFooterString() {
		StringBuffer footerStr = new StringBuffer("");
		footerStr.append("<td style=\"padding-right: 20px;\">");
		if (pageNum < pageCount) {

		
			footerStr.append("<a title=\"��һҳ\" onmouseout=\"this.className = 'next'\" onmouseover=\"this.className = 'onnext'\" class=\"next\" ");
			footerStr.append(" href=\"");
			footerStr.append(  getUrlStr (this.pageNum+1) );
			footerStr.append("\"");
			footerStr.append("��һҳ</a>");

		}else{
			footerStr.append("<span title=\"�Ѿ������һҳ\" class=\"next\">�Ѿ������һҳ</span>");
		}
		footerStr.append("</td>\n");
		return footerStr.toString();
	}

	
	
	
	/**
	 * ���ɷ�ҳ�����ִ�
	 * @return
	 */
	protected String getBodyString() {

		StringBuffer pageStr = new StringBuffer();

		long start = pageNum - showCount / 2;
		start = start <= 1 ? 1 : start;

		long end = start + showCount;
		end = end > pageCount ? pageCount : end;
		pageStr.append("<td>");
		
		for (long i = start; i <= end; i++) {

			
			if (i != pageNum) {
				pageStr.append("<a");
				pageStr.append(" href=\"");
			
				pageStr.append(  getUrlStr ( i ) );
				pageStr.append("\">");
				
				pageStr.append(i);
				pageStr.append("</a>\n");
			} else {
				pageStr.append(" <strong class=\"pagecurrent\">");
				pageStr.append(i);
				pageStr.append("</strong> ");
			}
 
		}
		pageStr.append("</td>");
		return pageStr.toString();
	}

 


	
	
	
	/**
	 * ����ҳ�����ɳ�������href���ִ�
	 * @param page
	 * @return
	 */
	protected   String getUrlStr(long page){
		String page_url;
		page_url= "search-"+UrlUtils.getExParamUrl(url, "page");
		page_url+="-page-"+ page;
		
		
		 return page_url+".html" ;
	}
	
	public static void main(String[] args){
		String url = "/search-0";		
		String pattern = "p(\\d*)";
		Pattern p = Pattern.compile(pattern, 2 | Pattern.COMMENTS);
		Matcher m = p.matcher(url);
		if (m.find()) {		
		url = url.replaceAll(pattern, "p4");
		}else{
			url = url+"p5";
		}
	 
	}
	
	private  String findUrl(String url){
		String pattern = "(.*)(p(\\d))(.*).html";
		Pattern p = Pattern.compile(pattern, 2 | Pattern.DOTALL);
		Matcher m = p.matcher(url);
		if (m.find()) {
			String s = m.replaceAll("$1");
			return s+"-";
		}
		return null;
	}

 
	
}