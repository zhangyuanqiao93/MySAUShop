<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<h5>【SAU Shop】用户安装协议</h5>
<form method="post">
  <div style="height: 17em; border: 1px solid rgb(204, 204, 204); margin-bottom: 8px; padding: 5px; background: none repeat scroll 0% 0% rgb(255, 255, 255);line-height:20px; overflow-x: hidden; overflow-y: scroll;"> 
    　　<strong><a href="https://en.wikipedia.org/wiki/GNU_General_Public_License" target="_blank">Terms and conditions</a></strong>
  <br />
　　The terms and conditions of the GPL must be made available to anybody receiving a copy of the work that has a GPL applied to it ("the licensee"). Any licensee who adheres to the terms and conditions is given permission to modify the work, as well as to copy and redistribute the work or any derivative version. The licensee is allowed to charge a fee for this service, or do this free of charge. This latter point distinguishes the GPL from software licenses that prohibit commercial redistribution. The FSF argues that free software should not place restrictions on commercial use,[50] and the GPL explicitly states that GPL works may be sold at any price.

    The GPL additionally states that a distributor may not impose "further restrictions on the rights granted by the GPL". This forbids activities such as distributing of the software under a non-disclosure agreement or contract.

    The fourth section for version 2 of the license and the seventh section of version 3 require that programs distributed as pre-compiled binaries be accompanied by a copy of the source code, a written offer to distribute the source code via the same mechanism as the pre-compiled binary, or the written offer to obtain the source code that the user got when they received the pre-compiled binary under the GPL. The second section of version 2 and the fifth section of version 3 also require giving "all recipients a copy of this License along with the Program". Version 3 of the license allows making the source code available in additional ways in fulfillment of the seventh section. These include downloading source code from an adjacent network server or by peer-to-peer transmission, provided that is how the compiled code was available and there are "clear directions" on where to find the source code.

    The FSF does not hold the copyright for a work released under the GPL, unless an author explicitly assigns copyrights to the FSF (which seldom happens except for programs that are part of the GNU project). Only the individual copyright holders have the authority to sue when a license violation takes place.
  <br/>
    (以上复制自维基百科...)
  <br/>
  </div>
  <table border="0" width="100%">
  <tbody><tr>
    <td align="center"><input type="checkbox" id="readed">我已阅读并同意上述条款中的所有内容</input></td>
  </tr>
  <tr>
    <td align="center"><button><a style="text-decoration: none; color: #000;" id="donext" href="install!step2.${ext }">下一步：配置数据库信息</a></button></td>
  </tr>
</tbody></table>
</form>
<script type="text/javascript">
$(function(){
	$("#donext").click(function(){
		if(!$("#readed").attr("checked")){
			alert("您需仔细查看并同意协议内容，才能继续操作！");
			return false;
		}
	});
});
</script>
<jsp:include page="footer.jsp"></jsp:include>