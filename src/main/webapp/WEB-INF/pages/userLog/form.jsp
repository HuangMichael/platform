<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form class="form-horizontal" id="form" method="post">
    <div class="form-group">
        <div class="col-md-12">
                    <div class="form-group">
                <label for="id" class="col-md-2 control-label">序号</label>
                <div class="col-md-4">
                    <input class="form-control" id="id" name="id" v-model="userLog.id" />
                </div>
            </div>
            <div class="form-group">
                <label for="loginIp" class="col-md-2 control-label">登录ip</label>
                <div class="col-md-4">
                    <input class="form-control" id="loginIp" name="loginIp" v-model="userLog.loginIp"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="operation" class="col-md-2 control-label">操作</label>
                <div class="col-md-4">
                    <input class="form-control" id="operation" name="operation" v-model="userLog.operation"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="operationTime" class="col-md-2 control-label">操作时间</label>
                <div class="col-md-4">
                    <input class="form-control" id="operationTime" name="operationTime" v-model="userLog.operationTime"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="status" class="col-md-2 control-label">状态</label>
                <div class="col-md-4">
                    <input class="form-control" id="status" name="status" v-model="userLog.status"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="userName" class="col-md-2 control-label">用户名</label>
                <div class="col-md-4">
                    <input class="form-control" id="userName" name="userName" v-model="userLog.userName" />
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