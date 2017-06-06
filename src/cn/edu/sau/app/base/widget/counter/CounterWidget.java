package cn.edu.sau.app.base.widget.counter;

import java.io.File;
import java.util.Map;

import cn.edu.sau.eop.sdk.context.EopContext;
import cn.edu.sau.framework.util.FileUtil;
import cn.edu.sau.eop.sdk.context.EopSetting;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;
import cn.edu.sau.framework.util.StringUtil;

/**
 * 计数器挂件

 */
public class CounterWidget extends AbstractWidget {

	@Override
	protected void config(Map<String, String> params) {

	}

	@Override
	protected void display(Map<String, String> params) {
		String counterPath  =EopSetting.EOP_PATH+ EopContext.getContext().getContextPath() +"/counter.txt";
		File file  = new File(counterPath);
		try{
			if(!file.exists()) file.createNewFile();
		}catch(Exception e){
			e.printStackTrace();
		}
		String count =  FileUtil.read(counterPath, "UTF-8");
		if(StringUtil.isEmpty(count)) count="0";
		count = count.replaceAll("\n", "");
		FileUtil.write(counterPath, ""+ (Integer.valueOf(count) +1)) ;
		this.putData("count", (Integer.valueOf(count) +1));
	}

}
