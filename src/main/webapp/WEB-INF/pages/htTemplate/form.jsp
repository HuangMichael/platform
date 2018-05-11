<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form class="form-horizontal" id="form" method="post">
    <div class="form-group">
        <div class="col-md-12">
            <div class="form-group">
                <label for="fileName" class="col-md-2 control-label">文件名称</label>
                <div class="col-md-4">
                    <input class="form-control" id="id" name="id" v-model="htTemplate.id" type="hidden"/>
                    <input class="form-control" id="fileName" name="fileName" v-model="htTemplate.fileName" required/>
                </div>
                <label for="fileUrl" class="col-md-2 control-label">文件路径</label>
                <div class="col-md-4">
                    <input class="form-control" id="fileUrl" name="fileUrl" v-model="htTemplate.fileUrl" required/>
                </div>

            </div>
            <div class="form-group">
                <label for="templateName" class="col-md-2 control-label">模板名称</label>
                <div class="col-md-4">
                    <input class="form-control" id="templateName" name="templateName" v-model="htTemplate.templateName"/>
                </div>
                <label for="status" class="col-md-2 control-label">模板路径</label>
                <div class="col-md-4">
                    <input class="form-control" id="templateUrl" name="templateUrl" v-model="htTemplate.templateUrl"/>
                </div>
            </div>

            <div class="form-group">
                <label for="templateName" class="col-md-2 control-label">排序</label>
                <div class="col-md-4">
                    <input type="number" class="form-control" id="sortNo" name="sortNo" v-model="htTemplate.sortNo"/>
                </div>
                <label for="status" class="col-md-2 control-label">状态</label>
                <div class="col-md-4">
                    <select class="form-control" id="status"name = "status"  v-model="htTemplate.status" style="width:100%">
                        <option value="1" selected>有效</option>
                        <option value="0">无效</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消
        </button>
        <button id="saveBtn" name="saveBtn" class="btn btn-danger">保存
        </button>
    </div>
</form>