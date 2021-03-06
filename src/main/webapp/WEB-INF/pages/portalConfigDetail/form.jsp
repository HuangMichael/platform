<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form class="form-horizontal" id="form" method="post">
    <div class="form-group">
        <div class="col-md-12">
            <div class="form-group">
                <label for="chartName" class="col-md-2 control-label">统计图名称</label>
                <div class="col-md-4">
                    <input class="form-control" id="id" name="id" v-model="portalConfigDetail.id" type="hidden"/>
                    <input class="form-control" id="chartName" name="chartName" v-model="portalConfigDetail.chartName"
                           required/>
                </div>
                <label for="chartTitle" class="col-md-2 control-label">统计图标题</label>
                <div class="col-md-4">
                    <input class="form-control" id="chartTitle" name="chartTitle"
                           v-model="portalConfigDetail.chartTitle" required/>
                </div>
            </div>
            <div class="form-group">
                <label for="colWidth" class="col-md-2 control-label">栅格宽度</label>
                <div class="col-md-4">
                    <input class="form-control" id="colWidth" name="colWidth" v-model="portalConfigDetail.colWidth"
                           required/>
                </div>
                <label for="sortNo" class="col-md-2 control-label">排序</label>
                <div class="col-md-4">
                    <input class="form-control" id="sortNo" name="sortNo" v-model="portalConfigDetail.sortNo" required/>
                </div>
            </div>
            <div class="form-group">
                <label for="status" class="col-md-2 control-label">状态</label>
                <div class="col-md-4">
                    <select class="form-control" id="status" name ="status" v-model="portalConfigDetail.status" style="width:100%">
                        <option value="1" selected>有效</option>
                        <option value="0">无效</option>
                    </select>
                </div>
                <label for="portalConfig_id" class="col-md-2 control-label">所属门户</label>
                <div class="col-md-4">
                    <input class="form-control" id="portalConfig_id" name="portalConfig.id" v-model="portalConfigDetail.portalConfig.id" required/>
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
</form>