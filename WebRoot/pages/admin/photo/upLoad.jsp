<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>


<!-- 显示发表文章界面 -->

<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont"></i> <a href="/" class="maincolor">首页</a>
        <span class="c-gray en">&gt;</span>
        相册管理
        <span class="c-999 en">&gt;</span>
       上传图片
        <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>

    <div class="Hui-article">
    <article class="page-container">
<form class="form form-horizontal" action="my/admin/photo?action=insert&type=upload" method="post" enctype="multipart/form-data">

   

    <c:out value="${requestScope.message}" escapeXml="false"/>

    <div class="row cl">
        <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>选择文件：</label>
        <div class="formControls col-xs-8 col-sm-9">
            <input type="file"  name="myfile">
        </div>
    </div>

    <div class="row cl">
        <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>文件描述：</label>
        
       <div class="formControls col-xs-8 col-sm-9">
      
           <textarea name="info" cols="" rows="" class="textarea"  placeholder="说点什么..." datatype="*10-100" dragonfly="true" nullmsg="备注不能为空！" onKeyUp="textarealength(this,200)"></textarea>
            <p class="textarea-numberbar"><em class="textarea-length">0</em>/200</p>
        </div> 
    </div>

    <div class="row cl">
        <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
            <button  class="btn btn-primary radius" type="submit"><i class="Hui-iconfont">&#xe632;</i> 上传图片</button>
            <button  class="btn btn-default radius" type="reset">&nbsp;&nbsp;重新选择&nbsp;&nbsp;</button>
        </div>
    </div>
</form>
        </article>
        </div>

    </section>
