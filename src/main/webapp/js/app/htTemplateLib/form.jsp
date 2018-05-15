<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form class="form-horizontal" id="form" method="post">
    <div class="form-group">
        <div class="col-md-12">
                    <div class="form-group">
                <label for="id" class="col-md-2 control-label">序号</label>
                <div class="col-md-4">
                    <input class="form-control" id="id" name="id" v-model="htTemplateLib.id" />
                </div>
            </div>
            <div class="form-group">
                <label for="libName" class="col-md-2 control-label">模板库名称</label>
                <div class="col-md-4">
                    <input class="form-control" id="libName" name="libName" v-model="htTemplateLib.libName"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="libDesc" class="col-md-2 control-label">模板库描述</label>
                <div class="col-md-4">
                    <input class="form-control" id="libDesc" name="libDesc" v-model="htTemplateLib.libDesc"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="parentId" class="col-md-2 control-label">上级节点</label>
                <div class="col-md-4">
                    <input class="form-control" id="parentId" name="parentId" v-model="htTemplateLib.parentId"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="status" class="col-md-2 control-label">状态</label>
                <div class="col-md-4">
                    <input class="form-control" id="status" name="status" v-model="htTemplateLib.status" />
                </div>
            </div>
            <div class="form-group">
                <label for="authKey" class="col-md-2 control-label">授权码</label>
                <div class="col-md-4">
                    <input class="form-control" id="authKey" name="authKey" v-model="htTemplateLib.authKey" />
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default"
                data-dismiss="modal">关闭
        </button>
        <button id="saveBtn" name="saveBtn"
                class="btn btn-danger">保存
        </button>
    </div>
    </div>
</form>