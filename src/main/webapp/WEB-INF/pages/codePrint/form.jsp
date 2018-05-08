<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form class="form-horizontal" id="form" method="post">
    <div class="form-group">
        <div class="col-md-12">
                    <div class="form-group">
                <label for="id" class="col-md-2 control-label">序号</label>
                <div class="col-md-4">
                    <input class="form-control" id="id" name="id" v-model="codePrint.id" />
                </div>
            </div>
            <div class="form-group">
                <label for="printCode" class="col-md-2 control-label">二维码序列</label>
                <div class="col-md-4">
                    <input class="form-control" id="printCode" name="printCode" v-model="codePrint.printCode"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="printTime" class="col-md-2 control-label">打印时间</label>
                <div class="col-md-4">
                    <input class="form-control" id="printTime" name="printTime" v-model="codePrint.printTime"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="printer" class="col-md-2 control-label">打印人员</label>
                <div class="col-md-4">
                    <input class="form-control" id="printer" name="printer" v-model="codePrint.printer"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="equipmentId" class="col-md-2 control-label">设备</label>
                <div class="col-md-4">
                    <input class="form-control" id="equipmentId" name="equipmentId" v-model="codePrint.equipmentId"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="status" class="col-md-2 control-label">状态</label>
                <div class="col-md-4">
                    <input class="form-control" id="status" name="status" v-model="codePrint.status"  required/>
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