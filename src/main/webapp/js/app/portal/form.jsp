<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form class="form-horizontal" id="form" method="post">
    <div class="form-group">
        <div class="col-md-12">
                    <div class="form-group">
                <label for="id" class="col-md-2 control-label">序号</label>
                <div class="col-md-4">
                    <input class="form-control" id="id" name="id" v-model="portal.id" />
                </div>
            </div>
            <div class="form-group">
                <label for="name" class="col-md-2 control-label">名称</label>
                <div class="col-md-4">
                    <input class="form-control" id="name" name="name" v-model="portal.name"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="description" class="col-md-2 control-label">描述</label>
                <div class="col-md-4">
                    <input class="form-control" id="description" name="description" v-model="portal.description"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="status" class="col-md-2 control-label">状态</label>
                <div class="col-md-4">
                    <input class="form-control" id="status" name="status" v-model="portal.status" />
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