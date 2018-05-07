<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form class="form-horizontal" id="form" method="post">
    <div class="form-group">
        <div class="col-md-12">
            <div class="form-group">
                <label for="name" class="col-md-2 control-label">分类名称</label>
                <div class="col-md-4">
                    <input class="form-control" id="id" name="id" v-model="eqClass.id" type="hidden"/>
                    <input class="form-control" id="name" name="name" v-model="eqClass.name" required/>
                </div>
                <label for="hasChild" class="col-md-2 control-label">是否有子分类</label>
                <div class="col-md-4">
                    <select class="form-control" id="hasChild" v-model="eqClass.hasChild" style="width:100%">
                        <option value="1" selected>有效</option>
                        <option value="0">无效</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="parentId" class="col-md-2 control-label">上级分类</label>
                <div class="col-md-4">
                    <input class="form-control" id="parentId" name="parentId" v-model="eqClass.parentId" required/>
                </div>
                <label for="status" class="col-md-2 control-label">状态</label>
                <div class="col-md-4">
                    <select class="form-control" id="status" v-model="eqClass.status" style="width:100%">
                        <option value="1" selected>有效</option>
                        <option value="0">无效</option>
                    </select>
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