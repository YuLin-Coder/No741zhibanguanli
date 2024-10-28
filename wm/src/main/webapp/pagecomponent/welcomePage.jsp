<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--*****************************快捷方式页面********************************-->
<script>
$(function(){
	quickAccessInit();
})
// 快捷方式
function quickAccessInit(){
    <!--为class为shortcut绑定上点击事件-->
	$('.shortcut').click(function(){
		var title = $(this).find('.title').text();
		var url = $('.menu_item:contains('+ title + ')').attr('name');
		$('#panel').load(url);
	})
}
</script>
				<!-- 整一个欢迎界面div -->
				<div class="panel panel-default">
					<!-- 面包屑（主页） -->
					<ol class="breadcrumb">
						<li>主页</li>
					</ol>

					<div class="panel-body">
				<h1>欢 迎 登 陆 海 量 值 班 管 理 系 统</h1>
					</div>
				</div>
