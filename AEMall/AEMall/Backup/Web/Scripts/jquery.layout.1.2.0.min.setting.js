
/// <reference path="jquery-1.5.1.min.js" />

$.ajaxSetup({ cache: false });


$(document).ready(function () {
    $("#Loading").ajaxStart(function () {
        $(this).show();
    });
    $("#Loading").ajaxStop(function () {
        $(this).hide();
    });

    $("#errormsg").dialog({
        autoOpen: false,
        width: 800
    });

    $("#msg").dialog({
        autoOpen: false,
        width: 400,
        position: ["right", "bottom"],
        show: 'scale',
        hide: "explode"
    });

    //window.setInterval(getshowmsg, 10000);

    function getshowmsg() {
        $.ajax({
            type: "GET",
            url: "/Pub/Index/Msgs",
            data: "",
            success: function (msg) {
                if (msg.length > 725) {
                    $("#msg").html(msg);
                    $("#msg").dialog("open");
                }
            }
        });
    }


    $("#errormsg").ajaxError(function (event, request, settings) {
        $("#errormsg").html(request.responseText);
        $("#errormsg").dialog({ title: request.statusText });
        $("#errormsg").dialog("open");
    });


    //生成布局
    $('body').layout({ north__resizable: false, south__closable: false, south__spacing_open: 0, west__onresize: function () {
        $("#Menu_accordion").accordion("resize");
    }
    });

    //生成左侧菜单
    $("#Menu_accordion").accordion({
        header: ">h4",
        fillSpace: true,
        autoHeight: true
    });

    //隐藏Loading
    $("#Loading").fadeOut();

    var url = window.location.hash;
    if (url != "") {
        url = url.replace("#", "");
        if (url != "") {
            $.get(url, function (data) { $("#Main").html(data); });
        }
    }
});

function checkall() {
    $("input[name='checkbox']").attr("checked", $("input[name='checkall']").attr("checked"));
}

function checkallchange() {

    var url = $("#DeleteAll").attr("href");
    $("[type='checkbox']").click(function () {
        var str = "";
        $("[type='checkbox'][name='checkbox'][checked]").each(function () {
            str += $(this).val() + ",";
        });

        str = str.substr(0, str.length - 1);

        //alert(str);
        $("#DeleteAll").attr("href", url + "/" + str);
        alert($("#DeleteAll").attr("href"));
    });
}
