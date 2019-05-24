<%@page import="Model.User" %>
<%@page import="Model.Platform" %>
<%@page import="Bean.UserDao" %>
<%@page import="Bean.PlatformDao" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="../css/public.css"/>
    <link rel="stylesheet" href="../css/style.css"/>
<title>河北省创新年报系统</title>
</head>


<body>
 <script type="text/javascript" src="../js/address.js"></script> 
<!--头部-->
    <header class="publicHeader">
        <h1>河北省创新年报系统</h1>
        <div class="publicHeaderR">
            <p><span style="color: #fff21b"> &nbsp;&nbsp;</span> , 欢迎你！</p>
            <a href="login.jsp">退出</a>
        </div>
    </header>
    <section class="publicTime">
       
    </section>
<!--主体内容-->
    <section class="publicMian ">
        <div class="left">
            <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
            <nav>
                <ul class="list">
                    <li id="active"><a href="jibenxinxi.jsp">基本信息填报</a></li>
                <li><a href="TeacherResult.jsp">分类浏览</a></li>
                <li><a href="zonghecha.jsp">综合查询</a></li>
                <li><a href="Teacher.jsp">用户信息</a></li>
                <li><a href="login.jsp">退出系统</a></li>
                </ul>
            </nav>
        </div>
        <div class="right">
            <div class="location">
                <strong>你现在所在的位置是:</strong>
                <span>基本信息填报</span>
            </div>

  <form action="<%=request.getContextPath() %>/JibenxinxiServlet"  method="post">
<table border="1">

  <tr>
    <td width="166" height="40">平台名称</td>
    <td colspan="2"><input  id="platformname" name="platformname" type="text"  style="width:100%; height:100%; border:0px solid #FFFFFF;"></td>
    <td width="153">平台编号</td>
    <td colspan="5"><input  type="text" name="platformnum"   style="width:100%; height:100%; border:0px solid #FFFFFF;"></td>
  </tr>
  <tr>
    <td height="35">批准年月</td>
    <td colspan="2" align="left" valign="middle"><input  type="text" name="approvaltime"  style="width:100%; height:100%; border:0px solid #FFFFFF;" ></td>
    <td>批准文号</td>
    <td colspan="5"><input type="text" name="approvalnum"   style="width:100%; height:100%; border:0px solid #FFFFFF;"></td>
  </tr>
  <tr>
    <td height="40">技术领域</td>
    <td colspan="8"><input type="text" name="technicalfield"  style="width:100%; height:100%; border:0px solid #FFFFFF;"></td>
  </tr>
  <tr>
    <td height="39">平台级别</td>
    <td colspan="2"><input type="checkbox" name="platformlevel" value="国家级" />
    国家级
      <input type="checkbox" name="platformlevel" value="省级" />
    省级</td>
    <td>所在市县（区）</td>
    <td colspan="5">		
                    <select id="cmbProvince" name="cmbProvince"></select>    
					<select id="cmbCity" name="cmbCity"></select>    
					<select id="cmbArea" name="cmbArea"></select>  
  
    		<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
			<script type="text/javascript">    
				addressInit('cmbProvince', 'cmbCity', 'cmbArea');    
			</script> 
    </td>
  </tr>
  <tr>
    <td rowspan="2">平台组织形态</td>
    <td colspan="2" rowspan="2">
      <input type="radio" name="organization" value=" 内设机构相对独立(无法人资格)" />
    内设机构相对独立(无法人资格)</td>
    <td rowspan=""><p align="left">
        
        <input type="radio" name="organization" value="独立法人" />
        独立法人  </p>
      <p>
        
        <label>
          <input type="radio" name="organization" value="企业法人" />
          企业法人</label>
        <br />
        <label>
          <input type="radio" name="organization" value="事业法人" />
          事业法人</label>
        <br />
        <label>
          <input type="radio" name="organization" value="社团法人" />
          社团法人</label>
        <br />
    </p></td>
    <td height="32" colspan="5"><p>
      <label>
        
        <input type="radio" name="construction" value="多单位联合共建" />
        多单位联合共建</label>
      <strong><br />
      <label>        </label>
      </strong>
      <label>
        <input type="radio" name="construction" value="依托单位独自建设" />
        依托单位独自建设</label>
      <br />
    </p></td>
  </tr>
  <tr>
    <td width="168" height="31">京津冀共建</td>
    <td colspan="4"><p>
      <label>
        
        <input type="radio" name="jingjinji" value="是" />
        是</label>
      <strong><br />
      </strong>
      <label>
        <input type="radio" name="jingjinji" value="否" />
        否</label>
      <br />
    </p></td>
  </tr>
 <!--   
 <tr>
    <td><p>服务的主要</p>
    <p>国民经济行业</p></td>
    <td colspan="8">   <select id="first" name="mainservices1"><option>    </option> </select>  
    <select id="second" name="mainservices2"> <option>    </option></select>
    <select id="third" name="mainservices3"> <option>    </option></td>
  </tr>
  
  <tr>
    <td height="30">所属的主要学科</td>
    <td colspan="8"> <select id="sub" name="subject1"><option>    </option> </select>  
    <select id="sub2" name="subject2"> <option>    </option></select>
    <select id="sub3" name="subject3"> <option>    </option></td>   
  </tr>
  -->
  
  	<tr>
		
			
			 <td>服务的主要国民经济行业</td>
          <td colspan="8">
    		<select id="fuwuhangye1" name="fuwuhangye1"> 
                  <option>--一级行业--</option> 
                  <option>农、林、牧、渔业</option><option>采矿业</option><option>制造业</option><option>电力、热力、燃气及水生产和供应业</option><option>建筑业</option><option>批发和零售业</option> </option><option>交通运输、仓储和邮政业</option>  
            </select> 
            <select id="fuwuhangye11" name="fuwuhangye11"> 
                   <option>--二级行业--</option> 
            </select> 
            <select id="fuwuhangye111" name="fuwuhangye111"> 
                    <option>--三级行业--</option> 
			</select> 
			
		</td>
		<script>
		  var myclass = [ 
		      [['农业'],['林业'],['畜牧业'],['渔业'],['农、林、牧、渔服务业']], 
		      [['煤炭开采和洗选业'],['石油和天然气开采业'],['黑色金属矿采选业'],['有色金属矿采选业'],['非金属矿采选业'],['开采辅助活动'],['其他采矿业']], 
		      [['农副食品加工业'],['食品制造业'],['酒、饮料和精制茶制造业'],['烟草制品业'],['纺织业'],['纺织服装、服饰业'],['皮革、毛皮、羽毛及其制品和制鞋业']], 
		      [['电力、热力生产及供应业'],['燃气生产和供应业'],['水的生产和供应业']], 
		      [['房屋建筑业'],['土木工程建筑业'],['建筑安装业'],['建筑装饰和其他建筑业']], 
		      [['批发业'],['零售业']],
		      [['铁路运输业'],['道路运输业'],['水上运输业'],['航空运输业'],['管道运输业']]
		  ]; 
		  var mystudy= [ 
			    [ //第一维代表专业 ， 第二维代表该专业的班级 ，第三维代表该班级的学生 
			      [['谷物种植'],['豆类、油料和薯类种植'],['棉、麻、糖和烟草种植'],['蔬菜、食用菌和园艺作物种植'],['水果种植'],['坚果，含油果、香料和饮料作物种植'],['中药材种植'],['其他农业']], 
			      [['林木育种和育苗'],['造林和更新'],['森林经营和管护'],['木材和竹材采运'],['林产品采集']], 
			      [['牲畜饲养'],['家禽饲养'],['狩猎和捕捉动物'],['其他畜牧业']],
			      [['水产养殖'],['水产捕捞']],
			      [['农业服务业'],['林业服务业'],['畜牧服务业'],['渔业服务业']]
			    ], 
			    [ 
			      [['烟煤和无烟煤开采洗选'],['褐煤开采洗选'],['其他煤炭洗选']], 
			      [['石油开采'],['天然气开采']], 
			      [['铁矿采选'],['锰矿、铬矿采选'],['其他黑色金属矿采选']],
			      [['常用有色金属矿采选'],['贵金属矿采选'],['稀有稀土金属矿采选']], 
			      [['土砂石开采'],['化学矿开采'],['采盐'],['石棉及其他非金属矿开采']], 
			      [['煤炭开采和洗选辅助活动'],['石油和天然气开采辅助活动'],['其他开采辅助活动']],
			      [['其他采矿业']]
			    ], 
			    [ 
			      [['谷物磨制'],['饲料加工'],['植物油加工'],['制糖业'],['屠宰及肉类加工'],['水产品加工']], 
			      [['烘焙食品制造'],['糖果巧克力及蜜饯制造'],['方便食品制造'],['乳制品制造']], 
			      [['酒的制造'],['饮料的制造'],['精制茶加工']],
			      [['烟叶复烤'],['卷烟制造'],['其他烟草制品制造']],
			      [['棉纺织及印染精加工'],['毛纺织及染整精加工'],['麻纺织及染整精加工'],['丝绢纺织及染整精加工']],
			      [['机织服装制造'],['针织或钩针编织服装制造'],['服饰制造']], 
			      [['皮革制品制造'],['羽毛加工及制品制造'],['制鞋业']]
			    ],
			    [ 
			        [['电力生产'],['电力供应'],['热力生产及供应']], 
			        [['燃气生产和供应业']], 
			        [['自来水的生产和供应'],['污水处理及其再生产利用'],['其他水的处理和应用']]     
			    ],
			    [ 
			        [['房屋建筑业']], 
			        [['铁路隧道桥梁工程建筑'],['海洋工程建筑'],['工况工程建筑'],['其他土木工程建筑']], 
			        [['电气安装'],['管道和设备安装'],['其他建筑安装业']],
			        [['建筑装饰业'],['工程准备活动'],['提供施工设备服务'],['其他未列明建筑业']] 
			    ],
			    [ 
			        [['农林牧产品批发'],['食品饮料及烟草制品批发'],['纺织服装及家庭用品批发']], 
			        [['综合零售'],['食品饮料和烟草制品零售'],['纺织服饰用品零售'],['医药及医疗器械零售']]
			    ],
			    [ 
			        [['铁路旅客运输'],['铁路货物运输'],['铁路运输辅助活动']], 
			        [['城市公共交通运输'],['公路旅客运输'],['道路货物运输'],['道路运输辅助活动']],
			        [['水上旅客运输'],['水上货物运输'],['水上运输辅助活动']], 
			        [['航空客货运输'],['通用航空服务'],['航空运输辅助活动']],
			        [['管道运输业']]
			    ] 
			  ]; 
		  document.getElementById("fuwuhangye1").onchange = function(){ 
			  //获取选择的选项的索引值（从1开始的，没有返回-1） 
			  var selectNum = this.selectedIndex; 
			  //清空原来的选项 
			  document.getElementById("fuwuhangye11").length=1; 
			  document.getElementById("fuwuhangye111").length=1; 
			  //循环添加子节点 
			  for(var i=0;i<myclass[selectNum-1].length;i++){ 
			    //创建元素节点 
			    var node =document.createElement("OPTION"); 
			    //创建文本节点 
			    var text = document.createTextNode(myclass[selectNum-1][i]); 
			     node.appendChild(text); 
			    document.getElementById("fuwuhangye11").appendChild(node); 
			  } 
			}; 
			  document.getElementById("fuwuhangye11").onchange = function(){ 
			    document.getElementById("fuwuhangye111").length=1; 
			    var selectStudentNum = this.selectedIndex; 
			    var selectClassNum = document.getElementById("fuwuhangye1").selectedIndex; 
			    for(var i=0;i<mystudy[selectClassNum-1][selectStudentNum-1].length;i++){ 
			      var node =document.createElement("OPTION"); 
			      var text = document.createTextNode(mystudy[selectClassNum-1][selectStudentNum-1][i]); 
			      node.appendChild(text); 
			      document.getElementById("fuwuhangye111").appendChild(node); 
			    } 
			  } 
		</script>
		
		<script>
			function sanji(id){
				var inputid=id;
				var id1=document.getElementById(inputid).value;
				var id2=inputid+''+"1";
				var cks = document.getElementById(id2);
				if(id1==""||id1==null){
					cks.disabled="true";
				}
				else{
					
					cks.removeAttribute('disabled');
				}
			}
		</script>
	</tr>
	</div>
	<tr>
	<tr>
    <td height="50">所属的主要学科</td>
		<td colspan="8">
			<select id="suoshuxk1" name="suoshuxk1"> 
  				<option>--请选择专业--</option> 
  				<option>哲学</option><option>经济学</option><option>法学</option><option>教育学</option><option>文学</option><option>理学</option><option>工学</option>
  			</select> 
			<select id="suoshuxk11" name="suoshuxk11"> 
  				<option>--请选择班级--</option> 
			</select> 
			<select id="suoshuxk111" name="suoshuxk111"> 
  				<option>--请选择学生--</option> 
			</select> 
			
		</td>
	</tr>
	<script> 
  var myXueke2 = [ 
      [['哲学类']], 
      [['经济学类'],['财政学类'],['金融学类'],['经济与贸易类']], 
      [['法学类'],['政治学类'],['社会学类'],['民族学类'],['马克思主义民主类'],['公安学类']],
      [['教育学类'],['体育学类'],['中国语言文学类'],['外国语言文学类'],['新闻传播学类']],
      [['数学类'],['物理学类'],['化学类'],['天文学类'],['地理科学类'],['大气科学类']],
      [['力学类'],['机械类'],['仪器类'],['材料类'],['能源动力类']]
  ]; 
  var myXueke3= [ 
    [ //第一维代表专业 ， 第二维代表该专业的班级 ，第三维代表该班级的学生 
      [['哲学'],['逻辑学'],['宗教学'],['伦理学'],['经济学'],['经济统计学']]    
    ], 
    [ 
      [['国民经济管理'],['资源与环境经济学'],['商务经济学'],['能源经济']], 
      [['财政学'],['税收学'],['金融学']], 
      [['投资学'],['金融数学'],['信用管理'],['经济与经融']],
      [['国际金融与贸易'],['贸易经济']] 
    ], 
    [ 
      [['法学'],['知识产权'],['监狱学']], 
      [['政治与行政学'],['国际政治'],['外交学'],['国际事务与国际关系']], 
      [['社会工作'],['人类学'],['女性学'],['家政学']],
      [['民族学'],['科学社会主义']],
      [['中国共产党历史'],['思想政治教育']],
      [['警犬技术'],['经济犯罪侦查'],['边防指挥']],
    ], 
    [ 
        [['教育技术学'],['艺术教育'],['学前教育']], 
        [['运动人体科学'],['运动健康'],['休闲体育']], 
        [['汉语言文学'],['汉语言'],['汉语言国际教育'],['古典文献学']],
        [['英语'],['俄语'],['德语'],['法语']],
        [['广告学'],['广播电视学'],['传播学'],['编辑出版学']]
    ],
    [ 
        [['数学应用学'],['信息与计算科学']], 
        [['物理学'],['应用物理学'],['核物理']], 
        [['应用化学'],['化学生物学'],['分子科学与工程']],
        [['天文学']],
        [['地理科学与环境资源'],['人文地理与城乡规划'],['地理信息科学']],
        [['大气科学'],['应用气象学']]
    ],
    [ 
        [['理论与应用力学'],['工程力学'],['机械工程']], 
        [['车辆工程'],['汽车服务工程'],['机械工艺技术']], 
        [['测控技术与仪器']],
        [['冶金工程'],['材料科学与工程'],['材料物理'],['材料化学']],
        [['新能源科学工程'],['能源与环境系统工程'],['能源与动力工程']]
    ]  
  ]; 
document.getElementById("suoshuxk1").onchange = function(){ 
  //获取选择的选项的索引值（从1开始的，没有返回-1） 
  var selectNum = this.selectedIndex; 
  //清空原来的选项 
  document.getElementById("suoshuxk11").length=1; 
  document.getElementById("suoshuxk111").length=1; 
  //循环添加子节点 
  for(var i=0;i<myXueke2[selectNum-1].length;i++){ 
    //创建元素节点 
    var node =document.createElement("OPTION"); 
    //创建文本节点 
    var text = document.createTextNode(myXueke2[selectNum-1][i]); 
     node.appendChild(text); 
    document.getElementById("suoshuxk11").appendChild(node); 
  } 
}; 
  document.getElementById("suoshuxk11").onchange = function(){ 
    document.getElementById("suoshuxk111").length=1; 
    var selectStudentNum = this.selectedIndex; 
    var selectClassNum = document.getElementById("suoshuxk1").selectedIndex; 
    for(var i=0;i<myXueke3[selectClassNum-1][selectStudentNum-1].length;i++){ 
      var node =document.createElement("OPTION"); 
      var text = document.createTextNode(myXueke3[selectClassNum-1][selectStudentNum-1][i]); 
      node.appendChild(text); 
      document.getElementById("suoshuxk111").appendChild(node); 
    } 
  } 
</script> 
		<script>
			function sanji1(id){
				var inputid=id;
				var id1=document.getElementById(inputid).value;
				var id2=inputid+''+"1";
				var cks = document.getElementById(id2);
				if(id1==""||id1==null){
					cks.disabled="true";
				}
				else{
					
					cks.removeAttribute('disabled');
				}
			}
		</script>
		
  <tr>
    <td height="20">依托单位名称</td>
    <td colspan="2"><input  type="text" name="supportinstitution" style="width:100%; height:100%; border:0px solid #FFFFFF;"></td>
    <td><p>依托单位组织机构代码（社会信用代码）</p>
    </td>
    <td colspan="5"><input type="text" name="creditcode" style="width:100%; height:100%; border:0px solid #FFFFFF;"></td>
  </tr>
  <tr>
    <td height="20"><p>依托单位法人代表姓名</p>
    </td>
    <td colspan="2"><input  type="text" name="legalpersonname" style="width:100%; height:100%; border:0px solid #FFFFFF;"></td>
    <td>办公电话</td>
    <td colspan="5"><input type="text" name="legalpersonphone" style="width:100%; height:100%; border:0px solid #FFFFFF;"></td>
  </tr>
  <tr>
    <td height="30">依托单位类型</td>
    <td colspan="8"><p>
      <label></label>
      <select name="supporttype" size="1">
        <option selected="selected">企业</option>
        <option>科研机构</option>
        <option>高等院校</option>
        <option>检测机构</option>
        <option>医疗机构</option>
        <option>政府机构</option>
        <option>社团组织</option>
        <option>其他</option>
      </select>
      <br />
    </p>    </td>
  </tr>
  <tr>
    <td height="57">共建单位</td>
    <td colspan="8"><textarea name="unitconstruction" style="width:100%; height:100%; border:0px solid #FFFFFF;"></textarea></td>
  </tr>
  <tr>
    <td height="30" rowspan="3">平台主任(院长）</td>
    <td width="92" height="44">姓名</td>
    <td width="168"><input type="text" name="directorname" style="width:100%; height:100%; border:0px solid #FFFFFF;"/></td>
    <td height="44">性别</td>
    <td height="44"><input type="radio" name="directorsex" value="男"  />
    男 
      <input type="radio" name="directorsex" value="女" />
    女</td>
    <td width="54" height="44">出生年月</td>
    <td width="111"><input type="text" name="directorbirth" style="width:100%; height:100%; border:0px solid #FFFFFF;"/></td>
    <td width="53">职称</td>
    <td width="148"><input name="directortitle" type="text" size="20" style="width:100%; height:100%; border:0px solid #FFFFFF;"/></td>
  </tr>
  <tr>
    <td height="52">所学专业</td>
    <td height="52"><input type="text" name="directormajor" style="width:100%; height:100%; border:0px solid #FFFFFF;" /></td>
    <td height="52">学历</td>
    <td height="52"><input type="text" name="directoreedubg" style="width:100%; height:100%; border:0px solid #FFFFFF;"/></td>
    <td height="52">学位</td>
    <td height="52" colspan="3"><input type="text" name="directordegree" style="width:100%; height:100%; border:0px solid #FFFFFF;"/></td>
  </tr>
  <tr>
    <td height="47">办公电话</td>
    <td height="47"><input type="text" name="directortel" style="width:100%; height:100%; border:0px solid #FFFFFF;"/></td>
    <td height="47">手机</td>
    <td height="47"><input type="text" name="directorphone" style="width:100%; height:100%; border:0px solid #FFFFFF;"/></td>
    <td height="47">E-mail</td>
    <td height="47" colspan="3"><input type="text" name="directormail" style="width:100%; height:100%; border:0px solid #FFFFFF;"/></td>
  </tr>
  <tr>
    <td height="38">平台网站名称</td>
    <td colspan="4"><input type="text" name="webname" style="width:100%; height:100%; border:0px solid #FFFFFF;" /></td>
    <td>网址</td>
    <td colspan="3"><input type="text" name="url" style="width:100%; height:100%; border:0px solid #FFFFFF;"/></td>
  </tr>
  <tr>
    <td height="36">平台通讯地址</td>
    <td colspan="4"><input type="text" name="address" style="width:100%; height:100%; border:0px solid #FFFFFF;" /></td>
    <td>邮编</td>
    <td colspan="3"><input type="text" name="postcode" style="width:100%; height:100%; border:0px solid #FFFFFF;" /></td>
  </tr>
  
</table>
 <center> <input style="text-align:center;width:100px;"type="submit" name="chaxun" value="填写完成"/>
                                  <input type="reset" style="text-align:center;width:100px;" value="重置"></center>
</form>
       
        </div>
    </section>
<script> 

  var messgi ='<%=request.getParameter("tianbao")%>';
  if(messgi=='yes'){
   alert("选择学生成功！");
  }
</script>
</body>
</html>