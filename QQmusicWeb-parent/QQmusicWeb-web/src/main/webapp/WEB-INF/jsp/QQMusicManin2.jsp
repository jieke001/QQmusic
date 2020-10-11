<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>QQ音乐-千万正版音乐海量无损曲库新歌热歌天天畅听的高品质音乐平台</title>
		<link href="${pageContext.request.contextPath}/layui/css/layui.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/QQMusic2.css" rel="stylesheet" type="text/css"/>

		<link href="${pageContext.request.contextPath}/css/QQMusic.css" rel="stylesheet" type="text/css" />
	</head>

	<body>

		<div class="mod_header">
			<!--导航-->
			<header class="header">

				<div class="nva">
					<div class="nva-img">
						<h1><a href="#"><img src="${pageContext.request.contextPath}/img/logo@2x.png" width="180px" height="45px" alt="QQ音乐"/></a></h1>
					</div>
					<ul  id="list" class="layui-nav">
						<li>
							<a href="#">音乐馆</a>
						</li>
						<li>
							<a href="javascript:;" class="myMusic">我的音乐</a>
						</li>
						<li>
							<a href="#">客户端</a>
							<dl class="khd">
								<dt>HQ高品质&nbsp;全员开启</dt>
								<dt>独家音质&nbsp;全面升级</dt>
								<dt>轻盈视觉&nbsp;动态皮肤</dt>
								<dt><a>下载体验</a></dt>
							</dl>
						</li>
						<li>
							<a href="#">开放平台</a>
						</li>
						<li>
							<a href="#">VIP</a>
						</li>
						<li>
							<input type="text" name="shousuo" placeholder="搜索音乐、MV、歌单、用户" />
						</li>
						<li class="layui-nav-item">
							<c:if test="${sessionScope.userSession eq null}">
								<a href="#" id="sub">登录</a>
							</c:if>
							<c:if test="${sessionScope.userSession ne null}">
								<a href="javascript:;"><img src="${pageContext.request.contextPath}/img/1230131.jpg" class="layui-nav-img"/></a>
								<dl class="layui-nav-child">
									<!-- 二级菜单 -->
									<dd>
										<a href="javascript:;">${sessionScope.userSession.uName}</a>
									</dd>
									<dd>
										<a href="${pageContext.request.contextPath}/user/exitUser">退出</a>
									</dd>
								</dl>
							</c:if>
						</li>
						<li>
							<a href="javascript:;" id="kaitonglvz">开通绿钻豪华版</a>
						</li>
						<li>
							<a href="#">开通付费包</a>
						</li>
					</ul>
					<hr />
					<ul class="nva2">
						<li>
							<a href="#">首页</a>
						</li>
						<li>
							<a href="#">歌手</a>
						</li>
						<li>
							<a href="#">新碟</a>
						</li>
						<li>
							<a href="#">排行榜</a>
						</li>
						<li>
							<a href="#">分类歌单</a>
						</li>
						<li>
							<a href="#">电台</a>
						</li>
						<li>
							<a href="#">MV</a>
						</li>
						<li>
							<a href="#">数字专辑</a>
						</li>
						<li>
							<a href="#">票务</a>
						</li>
					</ul>
				</div>
			</header>
		</div>
			<!--头部-->
			<section id="section">
				<div id="recommande_area">
					<div class="recommend">
						<div id="option">
							<h2>歌单推荐</h2>
							<ul>
								<li>
									<a id="first2" href="${pageContext.request.contextPath}/music/queryMusicList2">为你推荐</a>
								</li>
								<li>
									<a href="#">经典</a>
								</li>
								<li>
									<a href="#">官方歌单</a>
								</li>
								<li>
									<a href="#">中文儿歌</a>
								</li>
								<li>
									<a href="#">情歌</a>
								</li>
								<li>
									<a href="#">网络歌曲</a>
								</li>
							</ul>
						</div>
						<div class="classify">
							<ul>
								<li>
									<div class="picture1"><img src="${pageContext.request.contextPath}/img/e6b16b910eb7d6f1c4f9af0805b7816c_300_n=1.jpg" /></div>
									<p>
										<a href="*">谁说一个人只能在家蹦养生迪</a>
									</p>
									<p>播放量8049</p>
								</li>
								<li>
									<div class="picture1"><img src="${pageContext.request.contextPath}/img/55b1c7b4cb2b20615f5177ca5e9771ce_300_n=1.jpg" /></div>
									<p>
										<a href="*">不负时光：假日踏青听的欢快小曲</a>
									</p>
									<p>播放量159.8万</p>
								</li>
								<li>
									<div class="picture1"><img src="${pageContext.request.contextPath}/img/cfe01b76cc3e8ca5b5694294e2db8e61_300_n=1.jpg" /></div>
									<p>
										<a href="*">个性女声：小姐姐们有点酷</a>
									</p>
									<p>播放量159.8万</p>
								</li>
								<li>
									<div class="picture1"><img src="${pageContext.request.contextPath}/img/02b3eb4a9b245ed5f2b9ff41cc99dc25_300_n=1.jpg" /></div>
									<p>
										<a href="*">低保证美学：Vaporwave</a>
									</p>
									<p>播放量59.8万</p>
								</li>
								<li>
									<div class="picture1"><img src="${pageContext.request.contextPath}/img/9d68728e9ea98de7e49377a0db8093e9_300_n=1.jpg" /></div>
									<p>
										<a href="*">心碎粤语|失眠者的孤独小夜曲</a>
									</p>
									<p>播放量9.8万</p>
								</li>
							</ul>
						</div>
						<!--
                作者：offline
                时间：2019-10-26
                描述：
            -->
						<div class="classify" id="lei">
							<ul>
								<li>
									<div class="picture1"><img src="${pageContext.request.contextPath}/img/300.jpg" /></div>
									<p>
										<a href="*">Netflix | 2019十大热门剧集原声</a>
									</p>
									<p>播放量：4.7万</p>
								</li>
								<li>
									<div class="picture1"><img src="${pageContext.request.contextPath}/img/600.jpg" /></div>
									<p>
										<a href="*">豪气古风：我命由我不由天</a>
									</p>
									<p>播放量：4.9万</p>
								</li>
								<li>
									<div class="picture1"><img src="${pageContext.request.contextPath}/img/300%20(1).jpg" /></div>
									<p>
										<a href="*">只要一生有你，晚一点也没关系</a>
									</p>
									<p>播放量19.8万</p>
								</li>
								<li>
									<div class="picture1"><img src="${pageContext.request.contextPath}/img/600%20(1).jpg" /></div>
									<p>
										<a href="*">成年人的感情，是一种冰冷默契</a>
									</p>
									<p>播放量9.8万</p>
								</li>
								<li>
									<div class="picture1"><img src="${pageContext.request.contextPath}/img/300%20(2).jpg" /></div>
									<p>
										<a href="*">砰砰砰！震撼你心跳的韩流劲歌</a>
									</p>
									<p>播放量0.8万</p>
								</li>
							</ul>
						</div>

						<div id="left" class="qmp">
							<a><</a>
						</div>
						<div id="right" class="qmp">
							<a>></a>
						</div>
						<ul class="slider-control">
							<li></li>
							<li></li>
						</ul>

					</div>
				</div>
				<!--新歌区域-->
				<div id="newsong_area">
					<div class="newSong">
						<h2>新歌首发</h2>
						<ul class="kind">
							<li>
								<a href="*">最新</a>
							</li>
							<li>
								<a href="*">内地</a>
							</li>
							<li>
								<a href="*">港台</a>
							</li>
							<li>
								<a href="*">欧美</a>
							</li>
							<li>
								<a href="*">韩国</a>
							</li>
							<li>
								<a href="*">日本</a>
							</li>
						</ul>
						<ul id="kind">
							<li>
								<div class="picture2">
									<img src="${pageContext.request.contextPath}/img/T002R90x90M000000osOzT05vFHV.jpg" title="刘惜君">
								</div>
								<div class="text">
									<p>
										<a href="*">让爱久一点《最佳男友进化...</a>
									</p>
									<p>
										<a title="刘惜君" href="javascript:;">刘惜君</a>
									</p>
								</div>
							</li>
							<li>
								<div class="picture2">
									<img src="${pageContext.request.contextPath}/img/T002R90x90M000000Bn2Xd4CSz0V.jpg" title="白雪歌">
								</div>
								<div class="text">
									<p>
										<a href="*">白雪歌</a>
									</p>
									<p>
										<a title="尚雯婕" href="*">尚雯婕</a>
									</p>
								</div>
							</li>
							<li>
								<div class="picture2">
									<img src="${pageContext.request.contextPath}/img/T002R90x90M000004Wq5SQ28NeZP.jpg" title="我与青春在赛跑">
								</div>
								<div class="text">
									<p>
										<a href="*">我与青春在赛跑《你好，对...</a>
									</p>
									<p>
										<a title="刘惜君" href="*">刘惜君</a>
									</p>
								</div>
							</li>
							<li>
								<div class="picture2">
									<img src="${pageContext.request.contextPath}/img/T002R90x90M000002zODxd1r0xFz.jpg" title="悲喜楼">
								</div>
								<div class="text">
									<p>
										<a href="*">悲喜楼《听雪楼》电视...</a>
									</p>
									<p>
										<a title="何晟铭" href="*">何晟铭</a>
									</p>
								</div>
							</li>
							<li>
								<div class="picture2">
									<img src="${pageContext.request.contextPath}/img/T002R90x90M000002EK8ux3MWacz.jpg" title="荣誉篮球">
								</div>
								<div class="text">
									<p>
										<a href="*">荣誉星球《篮球大唱片》综...</a>
									</p>
									<p>
										<a title="火箭少女101" href="*">火箭少女101</a>
									</p>
								</div>
							</li>
							<li>
								<div class="picture2">
									<img src="${pageContext.request.contextPath}/img/T002R90x90M0000042o7J60kegFH.jpg" title="一心">
								</div>
								<div class="text">
									<p>
										<a href="*">一心《封神演义》电...</a>
									</p>
									<p>
										<a title="郁可唯/曾一鸣" href="*">郁可唯/曾一鸣</a>
									</p>
								</div>
							</li>
							<li>
								<div class="picture2">
									<img src="${pageContext.request.contextPath}/img/T002R90x90M0000005pUi92r1zh9.jpg" title="海洋岛屿">
								</div>
								<div class="text">
									<p>
										<a href="*">海洋岛屿</a>
									</p>
									<p>
										<a title="校长(张弛)" href="*">校长(张弛)</a>
									</p>
								</div>
							</li>
							<li>
								<div class="picture2">
									<img src="${pageContext.request.contextPath}/img/T002R90x90M000001CeBxw1K07gt.jpg" title="Mama's House">
								</div>
								<div class="text">
									<p>
										<a href="*">Mama's House</a>
									</p>
									<p>
										<a title="push baby" href="*">push baby</a>
									</p>
								</div>
							</li>
							<li>
								<div class="picture2">
									<img src="${pageContext.request.contextPath}/img/T002R90x90M0000048h5j12YxC4d.jpg" title="out of love">
								</div>
								<div class="text">
									<p>
										<a href="*">out of love</a>
									</p>
									<p>
										<a title="Alessia Cara" href="javascript:;">Alessia Cara</a>
									</p>
								</div>
							</li>
						</ul>

					</div>
				</div>
				<div id="brillant_area">
					<div class="splendid">
						<h2>精彩推荐</h2>
						<div>
							<img src="${pageContext.request.contextPath}/img/1230177.jpg" width="600px" />
							<img src="${pageContext.request.contextPath}/img/1230131.jpg" width="600px" />
						</div>
					</div>
				</div>
				<div id="Nouveau_écuelle">
					<div id="publish">
						<h2>新碟首发</h2>
						<ul id="area">
							<li>
								<a href="*">内地</a>
							</li>
							<li>
								<a href="*">港台</a>
							</li>
							<li>
								<a href="*">欧美</a>
							</li>
							<li>
								<a href="*">韩国</a>
							</li>
							<li>
								<a href="*">日本</a>
							</li>
							<li>
								<a href="*">其他</a>
							</li>
						</ul>
						<ul id="first">
							<li>
								<p class="picture3">
									<img src="${pageContext.request.contextPath}/img/T002R300x300M0000005pUi92r1zh9.jpg" />
								</p>
								<p>
									<a href="*">海洋岛屿</a>
								</p>
								<p>
									<a href="*">校长(张弛)</a>
								</p>
							</li>
							<li>
								<p class="picture3">
									<img src="${pageContext.request.contextPath}/img/T002R300x300M000004MiIDc3S0CPX.jpg" />
								</p>
								<p>
									<a href="*">蝶恋花愿为花更美</a>
								</p>
								<p>
									<a href="*">龙梅子</a>
								</p>
							</li>
							<li>
								<p class="picture3">
									<img src="${pageContext.request.contextPath}/img/T002R300x300M000004fTgUP1sZPDZ.jpg" />
								</p>
								<p>
									<a href="*">狼说</a>
								</p>
								<p>
									<a href="*">姜玉阳</a>
								</p>
							</li>
							<li>
								<p class="picture3">
									<img src="${pageContext.request.contextPath}/img/T002R300x300M000000Bn2Xd4CSz0V.jpg" />
								</p>
								<p>
									<a href="*">白雪歌</a>
								</p>
								<p>
									<a href="*">尚雯婕</a>
								</p>
							</li>
							<li>
								<p class="picture3">
									<img src="${pageContext.request.contextPath}/img/T002R300x300M0000020sXRs3BCOvs.jpg" />
								</p>
								<p>
									<a href="*">空山新雨</a>
								</p>
								<p>
									<a href="*">魏新雨</a>
								</p>
							</li>
							<li>
								<p class="picture3">
									<img src="${pageContext.request.contextPath}/img/T002R300x300M000000U9TfK1KHgmR.jpg" />
								</p>
								<p>
									<a href="*">冷</a>
								</p>
								<p>
									<a href="*">叶炫清</a>
								</p>
							</li>
							<li>
								<p class="picture3">
									<img src="${pageContext.request.contextPath}/img/T002R300x300M0000009cLzS3VPVp1.jpg" />
								</p>
								<p>
									<a href="*">算谁的</a>
								</p>
								<p>
									<a href="*">李琦</a>
								</p>
							</li>
							<li>
								<p class="picture3">
									<img src="${pageContext.request.contextPath}/img/T002R300x300M0000011Dgtr3iJZwt.jpg" />
								</p>
								<p>
									<a href="*">oh~亲爱的</a>
								</p>
								<p>
									<a href="*">欧阳朵/凯小晴</a>
								</p>
							</li>
							<li>
								<p class="picture3">
									<img src="${pageContext.request.contextPath}/img/T002R300x300M000002Z8ADB3juBy0.jpg" />
								</p>
								<p>
									<a href="*">解释不清</a>
								</p>
								<p>
									<a href="*">曲肖冰</a>
								</p>
							</li>
							<li>
								<p class="picture3">
									<img src="${pageContext.request.contextPath}/img/T002R300x300M000004Wq5SQ28NeZP.jpg" />
								</p>
								<p>
									<a href="*">我与青春在赛跑</a>
								</p>
								<p>
									<a href="*">刘惜君</a>
								</p>
							</li>
						</ul>
					</div>
				</div>
				<div id="MV_area">
					<div class="MV">
						<h2>MV</h2>
						<ul class="MV_area">
							<li>
								<a href="*">精选</a>
							</li>
							<li>
								<a href="*">内地</a>
							</li>
							<li>
								<a href="*">韩国</a>
							</li>
							<li>
								<a href="*">港台</a>
							</li>
							<li>
								<a href="*">欧美</a>
							</li>
							<li>
								<a href="*">日本</a>
							</li>
						</ul>
						<ul class="MV_picture">
							<li>
								<p class="picture4">
									<img src="${pageContext.request.contextPath}/img/diwei.jpg" />
								</p>
								<p>
									<a href="*">低位</a>
								</p>
								<p>
									<a href="*">黄旭</a>
								</p>
							</li>
							<li>
								<p class="picture4">
									<img src="${pageContext.request.contextPath}/img/rangaijiuyidian.jpg" />
								</p>
								<p>
									<a href="*">让爱久一点《最佳男友进化论》</a>
								</p>
								<p>
									<a href="*">刘惜君</a>
								</p>
							</li>
							<li>
								<p class="picture4">
									<img src="${pageContext.request.contextPath}/img/Free.jpg" />
								</p>
								<p>
									<a href="*">Free Spirit</a>
								</p>
								<p>
									<a href="*">Khalid</a>
								</p>
							</li>
							<li>
								<p class="picture4">
									<img src="${pageContext.request.contextPath}/img/inmymind.jpg" />
								</p>
								<p>
									<a href="*">In My Mind(我脑海中)</a>
								</p>
								<p>
									<a href="*">Dynoro</a>
								</p>
							</li>
							<li>
								<p class="picture4">
									<img src="${pageContext.request.contextPath}/img/1554900538(1).jpg" />
								</p>
								<p>
									<a href="*">忧伤少年和阳光女孩</a>
								</p>
								<p>
									<a href="*">苏运莹</a>
								</p>
							</li>
							<li>
								<p class="picture4">
									<img src="${pageContext.request.contextPath}/img/1554900570(1).jpg" />
								</p>
								<p>
									<a href="*">看到风</a>
								</p>
								<p>
									<a href="*">冯提莫</a>
								</p>
							</li>
							<li>
								<p class="picture4">
									<img src="${pageContext.request.contextPath}/img/1554900597(1).jpg" />
								</p>
								<p>
									<a href="*">俩俩相忘</a>
								</p>
								<p>
									<a href="*">曲肖冰</a>
								</p>
							</li>
							<li>
								<p class="picture4">
									<img src="${pageContext.request.contextPath}/img/1554900628(1).jpg" />
								</p>
								<p>
									<a href="*">终于自由了</a>
								</p>
								<p>
									<a href="*">周兴哲</a>
								</p>
							</li>
							<li>
								<p class="picture4">
									<img src="${pageContext.request.contextPath}/img/1554900677(1).jpg" />
								</p>
								<p>
									<a href="*">模样(《欲念游戏》电影推广曲)</a>
								</p>
								<p>
									<a href="*">黄渤</a>
								</p>
							</li>
							<li>
								<p class="picture4">
									<img src="${pageContext.request.contextPath}/img/1554900727.jpg" />
								</p>
								<p>
									<a href="*">爱上属于你的天空</a>
								</p>
								<p>
									<a href="*">飞儿乐队</a>
								</p>
							</li>
						</ul>
					</div>
				</div>
			</section>

	</body>
	<footer>
		<div class="footer_download">

			<ul class="footer_download_list">
				<h3 class="footer_tit">下载QQ音乐客户端</h3>
				<li class="Mac">
					<p>
						<img src="${pageContext.request.contextPath}/img/pc.png" \>
						<img class="Tu" src="${pageContext.request.contextPath}/img/pc2.png" />
					</p>
					<p>
						<a>PC版</a>
					</p>
				</li>
				<li class="Mac">
					<p>
						<img src="${pageContext.request.contextPath}/img/mac%20(1).png">
						<img class="Tu" src="${pageContext.request.contextPath}/img/mac.png" />
					</p>
					<p>
						<a>Mac版</a>
					</p>
				</li>
				<li class="Mac1">
					<p>
						<img class="Tu1" src="${pageContext.request.contextPath}/img/Android%20(1).png">
						<img class="Tuuu" src="${pageContext.request.contextPath}/img/Android.png" />
					</p>
					<p>
						<a>Android版</a>
					</p>
				</li>
				<li class="Mac2">
					<p>
						<img class="Tu2" src="${pageContext.request.contextPath}/img/iconziti48.png">
						<img class="Tuu" src="${pageContext.request.contextPath}/img/iconziti48%20(1).png" />
					</p>
					<p>
						<a>iphone版</a>
					</p>
				</li>

				<p class="footer_tit">开放平台</p>
				<p class="text1">
					<a href="*">腾讯音乐人平台</a>
					<a href="*">音乐号认证</a>
					<a href="*">机构入驻</a>
				</p>

			</ul>

			<ul class="company">
				<h3 class="footer_tit">合作链接</h3>
				<li>
					<a href="*">CJ ENM</a>
				</li>
				<li>
					<a href="*">腾讯视频</a>
				</li>
				<li>
					<a href="*">手机QQ空间</a>
				</li>
				<li>
					<a href="*">最新版QQ</a>
				</li>
				<li>
					<a href="*">腾讯社交广告</a>
				</li>
				<li>
					<a href="*">电脑管家</a>
				</li>
				<li>
					<a href="*">QQ浏览器</a>
				</li>
				<li>
					<a href="*">腾讯微云</a>
				</li>
				<li>
					<a href="*">腾讯云</a>
				</li>
				<li>
					<a href="*">企鹅FM</a>
				</li>
				<li>
					<a href="*">智能电视网</a>
				</li>
				<li>
					<a href="*">当贝市场</a>
				</li>
			</ul>
		</div>
	</footer>
	<div id="UserText">
		<form action="${pageContext.request.contextPath }/updateuserservlet" method="post">
			<img src="http://localhost:8080${pageContext.request.contextPath }/${user.photoUrl}" class="tet" id="yi" />
			<input type="file" name="touxiang" id="touxiang" onchange="jpg()" />
			<input type="hidden" id="touxiangUrl" name="touxiangUrl" value="${user.photoUrl}" />
			<br/>
			<input type="text" name="name" placeholder="昵称" class="tet" value="${user.name }" />
			<br/>
			<select class="tet" id="ai" name="sex">
				<c:if test="${user.sex eq '女'}">
					<option value="女" selected="selected">女</option>
					<option value="男">男</option>
				</c:if>
				<c:if test="${user.sex eq '男'}">
					<option value="男" selected="selected">男</option>
					<option value="女">女</option>
				</c:if>
			</select>
			<br/>
			<input type="text" class="tet" name="born" placeholder="出生日期" value="<fmt:formatDate value=" ${user.born} " pattern="yyyy-MM-dd "/>"/>
			<br/>
			<input type="text" name="hobby" placeholder="爱好" class="tet" value="${user.hobby }" />
			<br/>
			<input type="text" name="address" placeholder="住址" class="tet" value="${user.address }" />
			<br/>
			<input type="submit" value="保存" class="butt" /><input type="button" value="返回" class="butt" id="but" />

		</form>
	</div>

	</div>

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
	<script type="text/javascript">

		//注意：导航 依赖 element 模块，否则无法进行功能性操作
		layui.use('element', function(){
			var element = layui.element;

			//…
		});

		layui.use('layer', function() {

			$(function() {
				//控制轮播代码
				$(".slider-control li").click(function() {
					var size = $(".classify").size();
					var index = $(this).index();
					for(i = 0; i < size; i++) {
						if(i != index) {
							$(".classify").eq(i).css("display", "none");
							$(".slider-control li").eq(i).css("background-color", "gray");
						}
					}
					$(".classify").eq(index).css("display", "block");
					$(this).css("background-color", "orange");
				})

				$("#left").click(function() {
					size = $(".classify").size();

					var oldIndex;
					var nowIndex;
					for(i = 0; i < size; i++) {
						if($(".classify").eq(i).css("display") == "block") {
							oldIndex = i; //确定当前显示的下标
						}
					}
					/*weefaljflakjflajf;lkajfl;alert
					lkwjflajfl;ajfja*/
					if(oldIndex == 0) {
						nowIndex = size - 1;
					} else {
						nowIndex = oldIndex - 1;
					}
					//更新轮播图状态
					for(i = 0; i < size; i++) {
						if(i == nowIndex) {
							$(".classify").eq(i).css("display", "block");

							$(".slider-control li").eq(i).css("background-color", "orange");
						} else {
							$('.classify').eq(i).css("display", "none");
							$(".slider-control li").eq(i).css("background-color", "gray");
						}
					}
				})
				$("#right").click(function() {
					size = $(".classify").size();
					var oldIndex;
					var nowIndex;
					for(i = 0; i < size; i++) {
						if($(".classify").eq(i).css("display") == "block") {
							oldIndex = i; //确定当前显示的下标
						}
					}
					if(oldIndex == size - 1) {
						nowIndex = 0;
					} else {
						nowIndex = oldIndex + 1;
					}
					//更新轮播图状态
					for(i = 0; i < size; i++) {
						if(i == nowIndex) {
							$(".classify").eq(i).css("display", "block");

							$(".slider-control li").eq(i).css("background-color", "orange");
						} else {
							$('.classify').eq(i).css("display", "none");
							$(".slider-control li").eq(i).css("background-color", "gray");
						}
					}
				});
			});
			$(function() {
				/* if (window.parent){
				     window.parent.parent.location.reload(); //刷新父页面
				 }*/
				$(".recommend").mouseenter(function() {
					$(".qmp").css("display", "block");
				});
				$(".recommend").mouseleave(function() {
					$(".qmp").css("display", "none");
				});
			});

			$(function() {

				$("#U").click(function() {
					$("#UserText").show();
				});

				$("#but").click(function() {
					$("#UserText").hide();
				});
			});

			//文件上传
			//上传头像
			function jpg() {
				//创建表单
				var url = "${pageContext.request.contextPath }/fileUploadServlet";
				$.ajaxFileUpload({
					url: url,
					fileElementId: "touxiang",
					dataType: 'text',
					success: function(data) {
						console.info(data)
						$("#touxiangUrl").val(data);
						$("#yi").attr("src", "http://localhost:8080/${pageContext.request.contextPath}/" + data);
					}
				});
			}

			$(document).ready(function() {
				/*$(".nva #list li:nth-child(2) a").click(function() {
					$(this).parent().css("background-color", "#31C27C");
					$(this).css("color", "white");
					$(".nva #list li:nth-child(1)").css("background-color", "white");
					$(".nva #list li:nth-child(1) a").css("color", "black");
				})
				$(".nva #list li:nth-child(1) a").click(function() {
					$(this).parent().css("background-color", "#31C27C");
					$(this).css("color", "white");
					$(".nva #list li:nth-child(2)").css("background-color", "white");
					$(".nva #list li:nth-child(2) a").css("color", "black");
				})*/

				$(".nva #list li:nth-child(3) a").hover(function() {
					$(".nva #list li:nth-child(3) .khd").show();
					$(".nva #list li:nth-child(3) .khd").hover(function() {
						$(this).show();
					}, function() {
						$(this).hide();
					})
				}, function() {
					$(".nva #list li:nth-child(3) .khd").hide();
				})

				$("#sub").click(function() {
					layer.open({
						title: '用户登录',
						type: 2,
						content: 'http://localhost:8080/QQmusicWeb/user/translate2login',
						area: ['500px', '400px']
					});
				});

				$("#kaitonglvz").click(function () {
					layer.open({
						title:"<p style='text-align: center'>绿钻豪华版<input type='checkbox' name='ty' checked/>同意《服务条款》</p>",
						type:2,
						content:"http://localhost:8080/QQmusicWeb/Product/products",
						area:["700px","600px"]
					});
				});

				$(".myMusic").click(function () {
					if(${sessionScope.userSession == null}){
						alert("您还未登录，请先登录");
						layer.open({
							title: '用户登录',
							type: 2,
							content: 'http://localhost:8080/QQmusicWeb/user/translate2login',
							area: ['500px', '400px']
						});
					}else{
						$(this).attr("href","${pageContext.request.contextPath}/like/queryByUidLikeList?uId=${sessionScope.userSession.uId}");
					}
				});

			});
		});
	</script>
	</body>

</html>