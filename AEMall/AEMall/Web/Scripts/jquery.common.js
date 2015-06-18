//通用
function CommonUse() {
    RemoveLastLine();
    Favorite();
    MouseEffect();
    SwitchSearch();
    ShowCart();
}
//移除水平导航栏中最后一个竖线
function RemoveLastLine() {
    var nav = jQuery.trim($("#nav>#items").html());
    $("#nav>#items").html(nav.substring(0, nav.length - 1));
    var misc = jQuery.trim($("#misc_link").html());
    $("#misc_link").html(misc.substring(0, misc.length - 1));
}
//高亮促销TAB中的前两项
function HighlightTwo() {
    $("#tabcent div").each(function (index) {
        $(this).find("li").first().find("a").addClass("top");
    });
}
//收藏本站
function Favorite() {
    $("#fav a").click(function () {
        if (document.all) {
            //适用于ie核心
            window.external.addFavorite('http://www.gift163.cn', '物华天宝特产网');
        } else if (window.sidebar) {
            //适用于火狐
            window.sidebar.addPanel('物华天宝特产网', 'http://www.gift163.cn', "");
        }
        else {
            alert('对不起，您的浏览器不支持此操作！\r\n请使用菜单栏或Ctrl+D添加本站。');
        }
    });
}
//鼠标浮动交替效果
function MouseEffect() {
    $("#submit").hover(function () { $(this).attr("class", "search_active"); }, function () { $(this).attr("class", "search_static"); });
    $("#login_submit").hover(function () { $("#login_submit").addClass("sub_hover"); }, function () { $("#login_submit").removeClass("sub_hover"); });
    $("#cat_wrapper ul li").hover(function () { $(this).attr("class", "li_act"); }, function () { $(this).attr("class", "li_static"); });
    $("#basket_wrapper table tr").hover(function () { $(this).attr("class", "tr_act"); }, function () { $(this).attr("class", "tr_static"); });
    $(".inner_right div[class*=right_buy]").each(function () {
        var buy = $(".inner_right div[class*=right_buy]");
        $(this).hover(function () { buy.addClass("right_buy_act"); }, function () { buy.removeClass("right_buy_act"); });
    });
}
function SwitchRank() {
    $("#china > .area_right > ul >li").first().find(".full").css("display", "block");
    $("#china > .area_right > ul >li").first().find(".slim").css("display", "none");
    $("#oversea > .area_right > ul >li").first().find(".full").css("display", "block");
    $("#oversea > .area_right > ul >li").first().find(".slim").css("display", "none");
    $(".area_right  ul li").mouseover(function () {
        $(this).find(".full").css("display", "block");
        $(this).find(".slim").css("display", "none");
        $(this).siblings().find(".full").css("display", "none");
        $(this).siblings().find(".slim").css("display", "block");
    });
}
function InnerRank() {
    $(".area_right > ul >li").first().find(".full").css("display", "block");
    $(".area_right > ul >li").first().find(".slim").css("display", "none");
}
//滚动焦点图
function SliderMe() {
    var slide = $('#slide').switchable({
        putTriggers: 'appendTo',
        panels: 'li',
        initIndex: 0, // display the last panel
        effect: 'scrollUp', // taking effect when autoplay == true
        easing: 'cubic-bezier(.455, .03, .515, .955)', // equal to 'easeInOutQuad'
        end2end: true, // if set to true, loop == true
        loop: false, // not taking effect, because end2end == true
        autoplay: true,
        interval: 5,
        api: true // if set to true, Switchable returns API
    }).play();
}
//批量滚动焦点图
function SliderBatch() {
    window.api = $('#hslider').switchable({
        triggerType: "click",
        panels: 'li',
        easing: 'ease-in-out', // equal to 'easeInOutQuad'
        effect: 'scrollLeft', // taking effect when autoplay == true
        steps: 2,
        visible: 4, // important
        end2end: true, // if set to true, loop == true
        autoplay: true,
        prev: ".next",
        next: ".prev",
        api: true
    });
    $(".next").mouseover(function () { api.pause(); }).mouseleave(function () { api.play(); });
    $(".prev").mouseover(function () { api.pause(); }).mouseleave(function () { api.play(); });
}
//搜索框更改
function SwitchSearch() {
    $("#keywords").focus(function () {
        $(this).attr("class", "keyword_full");
    });
    $("#keywords").blur(function () {
        var txt_value = $(this).val();
        if (txt_value == "") {
            $(this).attr("class", "keyword_empty");
        }
    });
}
//显示关闭购物车
function ShowCart() {
    $("#cart_wrapper")
	.hover(function () { $("#basket_wrapper").stop(true, true).fadeIn(400); })
	.mouseleave(function () { $("#basket_wrapper").fadeOut(500); });
}
//显示关闭分类
function ShowCat() {
    $("#cat_wrapper").removeClass("cat_hover").addClass("cat_static");
    $("#cat").css("display", "none");
    $("#cat_wrapper")
	.hover(function () { $("#cat").stop(true, true).slideDown(200); $(this).removeClass("cat_static").addClass("cat_hover"); }, function () { $("#cat").stop(true, true).hide(1); $(this).removeClass("cat_hover").addClass("cat_static"); });
}
//促销Tab选项卡
function ShowTabPro() {
    $("#tabpro li").first().addClass("tabon").siblings().removeClass("tabon");
    $("#tabcent > div").first().show().siblings().hide();
    $("#tabpro li").mouseover(function () {
        var index = $("#tabpro li").index(this);
        $(this).addClass("tabon").siblings().removeClass("tabon");
        $("#tabcent > div").eq(index).show().siblings().hide();
    });
}
//促销Tab选项卡
function ShowBigTab() {
    $("#bigtabs li").first().addClass("tabon").siblings().removeClass("tabon");
    $("#bigtabcent > ul").first().show().siblings().hide();
    $("#bigtabs li").mouseover(function () {
        var index = $("#bigtabs li").index(this);
        $(this).addClass("tabon").siblings().removeClass("tabon");
        $("#bigtabcent > ul").eq(index).show().siblings().hide();
    });
}
//验证输入框
function ValidateLogin() {
    $("#Name").focus(function () { $("#val_user").css("display", "block").css("color", "#aaa"); });
    $("#Password").focus(function () { $("#val_pass").css("display", "block").css("color", "#aaa"); });
    $("#Name").blur(function () { $("#val_user").css("display", "none") });
    $("#Password").blur(function () { $("#val_pass").css("display", "none") });
}
function CheckSubmit() {
    var usr = $("#Name").val();
    var pass = $("#Password").val();
    if (usr == "") {
        $("#val_user").css("display", "block").css("color", "#c00");
        return false;
    }
    else if (pass == "") {
        $("#val_pass").css("display", "block").css("color", "#c00");
        return false;
    }
}
function CheckReme() {
    $("#val_auto b").click(function () {
        $("#RememberMe").click();
    });
}
//隐藏除第一个以外的其它产品图
function ShowFirstImg() {
    $("#img_zone li:first").show();
}
//商品详细页小图导航
function NaviThubnails() {
    if ($("#img_list li").length > 5) {
        new Marquee(
	{
	    MSClass: { MSClassID: "img_list_box", ContentID: "img_list" },
	    Direction: "left",
	    Step: 0.1,
	    Width: 278,
	    Height: 52,
	    Timer: 50,
	    DelayTime: 300000,
	    WaitTime: 300000,
	    ScrollStep: 55,
	    PrevBtnID: "img_nav_left",
	    NextBtnID: "img_nav_right",
	    AutoStart: 1
	});
    }
}
// 切换显示详细页大图
function ShowTheNaviImage() {
    $("#img_list li").each(function () {
        $(this).find("img").mouseover(function () {
            var id = $(this).attr("class");
            $("#" + id).siblings().hide();
            $("#" + id).show();
        });
    });
}
//加入购物车按钮交换
function SwitchBuyButton() {
    $("#buy").hover(function () { $(this).addClass("button_buy_act"); }, function () { $(this).removeClass("button_buy_act"); });
 }
//列表排序方式更换
function SwitchSort() {
    $("#sort_items li").each(function () {
        $(this).click(function () {
            if ($(this).attr("class") == "") {
                $(this).addClass("cur");
                $(this).siblings().attr("class", "");
            }
            else {
                $(this).toggleClass("down");
            }
        });
    });
}
//加减购买数量
function SetNum(obj) {
    var o = parseInt($("#num").val());
    var z = 0;
    if (obj == 0) {
        z = o > 0 ? (o - 1) : 0;
    }
    else {
        z = o + 1;
    }
    $("#num").val(z);
}

/*
添加商品及数量到购物车cookie中,返回当前商品在cookie中的总数
*/
function AddToShoppingCart(id, num) {

    var _num = 1;
    if (num != undefined)
        _num = num;

    var totalNum = _num; //总数默认为传入参数
    var cookieSet = { expires: 7, path: '/' }; //设置cookie路径的
    //    $.cookie(cookieProductID, null, cookieSet);//清除Cookie
    var jsonStr = "[{'ProductID':'" + id + "','Num':'" + _num + "'}]"; //构造json字符串,id是商品id   num是这个商品的数量
    if ($.cookie(cookieProductID) == null) {
        $.cookie(cookieProductID, jsonStr, cookieSet); //如果没有这个cookie就设置  
    }
    else {
        var jsonObj = eval('(' + $.cookie(cookieProductID) + ')'); //如果有，把json字符串转换成对象
        var findProduct = false; //是否找到产品ID,找到则为TRUE,否则为FALSH
        for (var obj in jsonObj) {
            if (jsonObj[obj].ProductID == id) {
                jsonObj[obj].Num = Number(jsonObj[obj].Num) + _num;
                totalNum = jsonObj[obj].Num;
                findProduct = true;
                break;
            }
        }
        if (findProduct == false) { //没找到,则添加
            jsonObj[jsonObj.length] = new Object();
            jsonObj[jsonObj.length - 1].ProductID = id;
            jsonObj[jsonObj.length - 1].Num = num;
        }

        $.cookie(cookieProductID, JSON.stringify(jsonObj), cookieSet);  //写入coockie   JSON需要json2.js支持
    }
    return totalNum;
    //    alert($.cookie(cookieProductID));
}