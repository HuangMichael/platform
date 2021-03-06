<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form class="form-horizontal" id="form" method="post">
    <div class="form-group">
        <div class="col-md-12">
                    <div class="form-group">
                <label for="id" class="col-md-2 control-label">序号</label>
                <div class="col-md-4">
                    <input class="form-control" id="id" name="id" v-model="portalConfigDetail.id" />
                </div>
            </div>
            <div class="form-group">
                <label for="chartName" class="col-md-2 control-label">统计图名称</label>
                <div class="col-md-4">
                    <input class="form-control" id="chartName" name="chartName" v-model="portalConfigDetail.chartName"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="chartTitle" class="col-md-2 control-label">统计图标题</label>
                <div class="col-md-4">
                    <input class="form-control" id="chartTitle" name="chartTitle" v-model="portalConfigDetail.chartTitle"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="colWidth" class="col-md-2 control-label">栅格宽度</label>
                <div class="col-md-4">
                    <input class="form-control" id="colWidth" name="colWidth" v-model="portalConfigDetail.colWidth"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="sortNo" class="col-md-2 control-label">排序</label>
                <div class="col-md-4">
                    <input class="form-control" id="sortNo" name="sortNo" v-model="portalConfigDetail.sortNo"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="status" class="col-md-2 control-label">状态</label>
                <div class="col-md-4">
                    <input class="form-control" id="status" name="status" v-model="portalConfigDetail.status" />
                </div>
            </div>
            <div class="form-group">
                <label for="portalConfig_id" class="col-md-2 control-label">门户配置id</label>
                <div class="col-md-4">
                    <input class="form-control" id="portalConfig_id" name="portalConfig_id" v-model="portalConfigDetail.portalConfig_id"  required/>
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