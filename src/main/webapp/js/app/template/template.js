/**
 * Created by huangbin on 2018-3-1 09:46:42.

 */


var rowId = null;
$(function () {
        dataTableName = "#htTemplateListTable";
        docName = "模板信息";
        mainObject = "htTemplate";


        var searchVue = new Vue({
            el: "#searchBox"
        });


        var validateOptions = {};


        searchModel = [
            {"param": "templateName", "paramDesc": "模板名称"},
            {"param": "status", "paramDesc": "状态"}
        ];


        var grid = $(dataTableName).bootgrid({
            selection: true,
            multiSelect: true,
            ajax: true,
            post: function () {
                return {
                    id: "b0df282a-0d67-40e5-8558-c9e93b7befed"
                };
            },
            url: "/" + mainObject + "/data",
            formatters: {
                "commands": function (column, row) {
                    return "<button type='button' class='btn btn-xs btn-default command-edit' data-row-id='" + row.id + "' onclick='edit(" + row.id + ")'><span class='fa fa-pencil'></span></button> " +
                        "<button type='button' class='btn btn-xs btn-default command-delete' data-row-id='" + row.id + "' onclick='del(" + row.id + ")'><span class='fa fa-trash-o'></span></button>"
                }
            },
            converters: {
                showStatus: {
                    to: showStatus
                }
            }
        });


        vdm = new Vue({
            el: formName,
            data: {
                "htTemplate": null
            }
        });
        initSelect();


        validateForm.call(validateOptions);

        $("#searchBtn").trigger("click");

    }
);


/**
 *
 * @param id
 */
function del(id) {

    var url = getMainObject() + "/delete/" + id;
    if (id) {
        bootbox.confirm({
            message: "确定删除该记录么",
            buttons: {
                confirm: {
                    label: '确定',
                    className: 'btn-success'
                },
                cancel: {
                    label: '取消',
                    className: 'btn-danger'
                }
            },
            callback: function (result) {
                if (result) {
                    $.ajax({
                        type: "GET",
                        url: url,
                        success: function (msg) {
                            if (msg) {
                                showMessage(msg.result, msg["resultDesc"]);
                                $(dataTableName).bootgrid("reload");
                            }
                        },
                        error: function (msg) {
                            showMessage(msg.result, msg["resultDesc"]);
                        }
                    });
                }
            }
        });
    }
}


/**
 * 编辑记录
 * @param id
 */
function edit(id) {
    var object = findByIdAndObjectName(id, mainObject);
    vdm.$set("htTemplate", object);
    $("#editModal").modal("show");
}


/**
 * 新建记录
 */
function add() {
    vdm.$set("htTemplate", null);
    $("#editModal").modal("show");
}




