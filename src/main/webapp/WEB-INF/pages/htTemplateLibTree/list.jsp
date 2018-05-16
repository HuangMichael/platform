<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="container">
    <div class="row">
        <div id="content" class="col-lg-12">
            <!-- PAGE HEADER-->
            <%@include file="../common/common-breadcrumb.jsp" %>
            <div class="row">
                <div class="col-md-12">
                    <!-- BOX -->
                    <div class="box border blue">
                        <div class="box-title">
                            <h4><i class="fa fa-sitemap"></i>模板信息</h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <div class="box border blue">
                        <div class="box-body treeContainer" id="treeDiv">
                            <ul id="tree" class="ztree"></ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-10">
                    <%--<div class="box border blue">--%>
                    <%--<div class="box-title">--%>
                    <%--<h4><i class="fa fa-sitemap"></i>设备信息</h4>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <div class="box border blue">
                        <div class="box-body">

                            <%@include file="form.jsp" %>

                        </div>

                    </div>
                    <div class="box border blue">
                        <div class="box-body">
                            <div id="dataView" style="height: 225px"></div>
                        </div>

                    </div>
                </div>
            </div>
            <%@include file="../common/common-back2top.jsp" %>
        </div>
    </div>
    <!-- /CONTENT-->
</div>
<script src="/js/app/htTemplateLib/htTemplateLibTree.js"></script>
