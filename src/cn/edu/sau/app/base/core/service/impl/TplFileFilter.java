package cn.edu.sau.app.base.core.service.impl;

import java.io.File;
import java.io.FileFilter;

import cn.edu.sau.framework.util.FileUtil;
/**
 * 模板文件过滤器
 */
public class TplFileFilter implements FileFilter {
	private static final String[] EXTS={"html","xml"};
	public boolean accept(File pathname) {
		String fileName = pathname.getName();
		
		if(pathname.isDirectory()){
			if(fileName.equals("images")) return false;
			if(fileName.equals("css")) return false;
			if(fileName.equals("js")) return false;
			if(fileName.equals(".svn")) return false;
			return true;
		}
		String ext  = FileUtil.getFileExt(fileName).toLowerCase();
		for(String e:EXTS){
			if(ext.equals(e)){
				return true;
			}
		} 
		return false; 
	}

}
