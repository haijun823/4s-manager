<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

    <title>Title</title>
    <%--引入公共依赖--%>
   <%@include file="/WEB-INF/views/header.jsp"%>
    <script src="/static/js/model/${domain}/${domain}.js"></script>
</head>
<body>
<%--datagrid--%>
<table id="${domain}Datagrid"></table>
<%--toolbar--%>
<div id="toolbar">
    <a data-cmd="add" href="javascript:void(0)" class="easyui-linkbutton c1" iconCls="icon-add" plain="true">添加</a>
    <a data-cmd="edit" href="javascript:void(0)" class="easyui-linkbutton c2" iconCls="icon-edit" plain="true" >编辑</a>
    <a data-cmd="delete" href="javascript:void(0)" class="easyui-linkbutton c3" iconCls="icon-remove" plain="true" >删除</a>
    <a data-cmd="refresh" href="javascript:void(0)" class="easyui-linkbutton c4" iconCls="icon-reload" plain="true" >刷新</a>
</div>
<%--添加或者编辑的dialog--%>
<div id="${domain}Dlg" class="easyui-dialog" style="width: 400px"
     closed="true" buttons="#dlg-buttons">
    <form id="${domain}Form" method="post" novalidate style="margin:0;padding:20px 50px">
        <%--编辑隐藏域的处理--%>
        <input type="hidden" name="id" >
        <table>
            #foreach( $fieldVo in $fieldList)
            <tr>
                <td>
                    $fieldVo.title:<input type="text" name="$fieldVo.field">
                </td>
            </tr>
            #end
        </table>
    </form>
</div>
<%--dialog的button--%>
<div id="dlg-buttons">
    <a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" data-cmd="submit" style="width:90px">提交</a>
    <a href="javascript:void(0)" class="easyui-linkbutton c8" iconCls="icon-cancel" data-cmd="cancel" style="width:90px">取消</a>
</div>
</body>
</html>
