<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form class="form-horizontal" id="form" method="post">
    <div class="form-group">
        <div class="col-md-12">
            <div class="form-group">
                <label for="libName" class="col-md-2 control-label">模板库名称</label>
                <div class="col-md-4">
                    <input class="form-control" id="id" name="id" v-model="htTemplateLib.id" type="hidden"/>
                    <input class="form-control" id="libName" name="libName" v-model="htTemplateLib.libName" required readonly/>
                </div>
                <label for="libDesc" class="col-md-2 control-label">模板库描述</label>
                <div class="col-md-4">
                    <input class="form-control" id="libDesc" name="libDesc" v-model="htTemplateLib.libDesc" required readonly/>
                </div>
            </div>
        </div>
    </div>
</form>