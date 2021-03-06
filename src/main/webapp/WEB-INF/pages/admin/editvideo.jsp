<%--
  User: 李呈云
  Date: 2016/10/16
  Time: 10:46
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加视频</title>
    <c:import url="../common/inc.jsp"/>
</head>
<body>
<c:import url="../common/admin_header.jsp"/>
<div class="container">
    <form:form modelAttribute="video" method="post" class="form-horizontal" role="form" enctype="multipart/form-data">
        <div class="col-sm-4 col-sm-offset-1">
            <div class="form-group">
                <label for="name" class="col-sm-3 control-label">影片名:</label>
                <div class="col-sm-4">
                    <form:input path="name" placeholder="必填"/>
                    <form:errors path="name"/>
                </div>
            </div>
            <div class="form-group">
                <label for="type" class="col-sm-3 control-label">剧情类型:</label>
                <div class="col-sm-4">
                    <form:input path="type" placeholder="必填"/>
                    <form:errors path="type"/>
                </div>
            </div>
            <div class="form-group">
                <label for="playType" class="col-sm-3 control-label">播放类型:</label>
                <div class="col-sm-4">

                    <input type="radio" name="playType" value="free"
                           <c:if test="${video.playType == 'free'}">checked</c:if>/>free
                    <input type="radio" name="playType" value="user"
                           <c:if test="${video.playType == 'user'}">checked</c:if>/>user
                    <input type="radio" name="playType" value="vip"
                           <c:if test="${video.playType == 'vip'}">checked</c:if>/>vip
                    <input type="radio" name="playType" value="vipplus"
                           <c:if test="${video.playType == 'vipplus'}">checked</c:if>/>vipplus
                    <form:errors path="playType"/>
                </div>
            </div>
            <div class="form-group">
                <label for="score" class="col-sm-3 control-label">评分:</label>
                <div class="col-sm-4">
                    <form:input type="number" min="1" max="10" path="score" value="${video.score}"/>
                    <form:errors path="score"/>
                </div>
            </div>
            <div class="form-group">
                <label for="director" class="col-sm-3 control-label">导演:</label>
                <div class="col-sm-4">
                    <form:input path="director"/>
                    <form:errors path="director"/>
                </div>
            </div>
            <div class="form-group">
                <label for="starring" class="col-sm-3 control-label">主演:</label>
                <div class="col-sm-4">
                    <form:input path="starring"/>
                    <form:errors path="starring"/>
                </div>
            </div>
            <div class="form-group">
                <label for="area" class="col-sm-3 control-label">地区:</label>
                <div class="col-sm-4">
                    <form:input path="area"/>
                    <form:errors path="area"/>
                </div>
            </div>
            <div class="form-group">
                <label for="language" class="col-sm-3 control-label">语言:</label>
                <div class="col-sm-4">
                    <form:input path="language"/>
                    <form:errors path="language"/>
                </div>
            </div>
            <div class="form-group">
                <label for="date" class="col-sm-3 control-label">上映日期:</label>
                <div class="col-sm-4">
                    <form:input type="date" path="date"/>
                    <form:errors path="date"/>
                </div>
            </div>
        </div>
        <div class="col-sm-7">
            <div class="form-group">
                <label for="vid" class="col-sm-12">视频播放id:</label>
                <div class="col-sm-8">
                    <form:input path="vid"/>
                    <form:errors path="vid"/>
                </div>
            </div>
            <div class="form-group">
                <label for="img" class="col-sm-12">图片上传:</label>
                <div class="col-sm-8">
                    <input type="file" name="file" id="file"/>
                    <form:errors path="img"/>
                </div>
            </div>
            <div class="form-group">
                <label for="description" class="col-sm-12">剧情描述:</label>
                <div class="col-sm-12">
                    <form:textarea path="description" cssClass="col-sm-8" cssStyle="height: 150px;"/>
                    <form:errors path="description"/>
                </div>
            </div>
            <div class="form-group">
                <input type="submit" class="col-sm-offset-1 btn-default btn" value="修改视频">
            </div>
        </div>
    </form:form>
</div>

</body>
</html>
