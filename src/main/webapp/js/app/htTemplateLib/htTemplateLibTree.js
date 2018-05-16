var zTree;
var demoIframe;
var setting = {
    view: {dblClickExpand: false, showLine: true, selectedMulti: false},
    data: {simpleData: {enable: true, idKey: "id", pIdKey: "pId", rootPId: ""}},
    callback: {
        onClick: function (event, treeId, treeNode) {
            var node = findObjById("htTemplateLib", treeNode.id);

            console.log("-------------------node-----  "+JSON.stringify(node));
            setTemplateLib(node);
            return true;
        }
    }
};
var zNodes = [];
$(document).ready(function () {
    var url = "/htTemplateLibTree/findTree";
    var pid = 0;
    $.ajaxSettings.async = false;
    $.getJSON(url, function (data) {
        for (var x = 0; x < data.length; x++) {

            console.log("x-----------------" + JSON.stringify(x));
            zNodes[x] = {
                id: data[x][0],
                locCode: data[x][1],
                name: data[x][2],
                pId: (data[x][4]) ? (data[x][4]) : 0,
                open: data[x][1].length < 4,
                isParent: false,
                halfCheck: true
            };
        }

        var t = $("#tree");
        t = $.fn.zTree.init(t, setting, zNodes);
        demoIframe = $("#testIframe");
        demoIframe.bind("load", loadReady);
        zTree = $.fn.zTree.getZTreeObj("tree");
        zTree.selectNode(zTree.getNodeByParam("id", zNodes[0]));


    });

    function loadReady() {
        var bodyH = demoIframe.contents().find("body").get(0).scrollHeight,
            htmlH = demoIframe.contents().find("html").get(0).scrollHeight, maxH = Math.max(bodyH, htmlH),
            minH = Math.min(bodyH, htmlH), h = demoIframe.height() >= maxH ? minH : maxH;
        if (h < 530) {
            h = 530
        }
        demoIframe.height(h)
    }


    vdm = new Vue({
        el: "#detailForm",
        data: location


    });
});


/**
 * 设置显示位置信息
 * @param data
 */
function setTemplateLib(data) {
    $("#libName").val(data.libName);
    $("#libDesc").val(data.libDesc);
    // setFormReadStatus("#detailForm", true);
    // loadUserList(data.id);
}