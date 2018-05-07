<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form class="form-horizontal" id="form" method="post">
    <div class="form-group">
        <div class="col-md-12">
            <div class="form-group">
                <label for="description" class="col-md-2 control-label">设备名称</label>
                <div class="col-md-4">
                    <input class="form-control" id="id" name="id" v-model="equipment.id" type="hidden" />
                    <input class="form-control" id="description" name="description" v-model="equipment.description"  required/>
                </div>
                <label for="eqCode" class="col-md-2 control-label">设备编码</label>
                <div class="col-md-4">
                    <input class="form-control" id="eqCode" name="eqCode" v-model="equipment.eqCode"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="eqModel" class="col-md-2 control-label">设备型号</label>
                <div class="col-md-4">
                    <input class="form-control" id="eqModel" name="eqModel" v-model="equipment.eqModel"  required/>
                </div>
                <label for="expectedYear" class="col-md-2 control-label">预计年限</label>
                <div class="col-md-4">
                    <input class="form-control" id="expectedYear" name="expectedYear" v-model="equipment.expectedYear"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="manageLevel" class="col-md-2 control-label">管理级别</label>
                <div class="col-md-4">
                    <input class="form-control" id="manageLevel" name="manageLevel" v-model="equipment.manageLevel"  required/>
                </div>
                <label for="netValue" class="col-md-2 control-label">净值</label>
                <div class="col-md-4">
                    <input class="form-control" id="netValue" name="netValue" v-model="equipment.netValue"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="originalValue" class="col-md-2 control-label">原值</label>
                <div class="col-md-4">
                    <input class="form-control" id="originalValue" name="originalValue" v-model="equipment.originalValue"  required/>
                </div>
                <label for="productDate" class="col-md-2 control-label">生产日期</label>
                <div class="col-md-4">
                    <input class="form-control" id="productDate" name="productDate" v-model="equipment.productDate"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="productFactory" class="col-md-2 control-label">生产厂商</label>
                <div class="col-md-4">
                    <input class="form-control" id="productFactory" name="productFactory" v-model="equipment.productFactory"  required/>
                </div>
                <label for="purchaseDate" class="col-md-2 control-label">购置日期</label>
                <div class="col-md-4">
                    <input class="form-control" id="purchaseDate" name="purchaseDate" v-model="equipment.purchaseDate"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="purchasePrice" class="col-md-2 control-label">购置价格</label>
                <div class="col-md-4">
                    <input class="form-control" id="purchasePrice" name="purchasePrice" v-model="equipment.purchasePrice"  required/>
                </div>
                <label for="runDate" class="col-md-2 control-label">运行日期</label>
                <div class="col-md-4">
                    <input class="form-control" id="runDate" name="runDate" v-model="equipment.runDate"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="setupDate" class="col-md-2 control-label">安装日期</label>
                <div class="col-md-4">
                    <input class="form-control" id="setupDate" name="setupDate" v-model="equipment.setupDate"  required/>
                </div>
                <label for="warrantyPeriod" class="col-md-2 control-label">保修期</label>
                <div class="col-md-4">
                    <input class="form-control" id="warrantyPeriod" name="warrantyPeriod" v-model="equipment.warrantyPeriod"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="eqClass_id" class="col-md-2 control-label">设备分类</label>
                <div class="col-md-4">
                    <input class="form-control" id="eqClass_id" name="eqClass.id" v-model="equipment.eqClass.id"  required/>
                </div>
                <label for="locationId" class="col-md-2 control-label">设备位置</label>
                <div class="col-md-4">
                    <input class="form-control" id="locationId" name="location.id" v-model="equipment.location.id"  required/>
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