$(function(){
	tabClose();
	tabCloseEven();

	InitLeftMenu();
})
//初始化左侧
function InitLeftMenu() {
    $('.easyui-accordion li a').click(function () {
        var tabTitle = $(this).children('.nav').text();

        var url = $(this).attr("rel");
        var menuid = $(this).attr("ref");
        var icon = "icon icon-nav"; //getIcon(menuid,icon);
       
        
        addTab(tabTitle, url, icon);
        $('.easyui-accordion li div').removeClass("selected");
        $(this).parent().addClass("selected");
    }).hover(function () {
        $(this).parent().addClass("hover");
    }, function () {
        $(this).parent().removeClass("hover");
    });

    $("#nav").accordion();return;
	//选中第一个
	var panels = $('#nav').accordion('panels');
	var t = panels[0].panel('options').title;
    $('#nav').accordion('select', t);
}
//获取左侧导航的图标
function getIcon(menuid){
	var icon = 'icon ';
	$.each(_menus.menus, function(i, n) {
		 $.each(n.menus, function(j, o) {
		 	if(o.menuid==menuid){
				icon += o.icon;
			}
		 })
	})

	return icon;
}

function addTab(subtitle, url, icon) {
    if (!$('#tabs').tabs('exists', subtitle)) {
        $('#tabs').tabs('add', {
            title: subtitle,
            content: createFrame(url),
            closable: true,
            icon: icon
        });
       //alert( $('.tabs-icon icon icon-nav').className);
       // $('#tabs').children('.nav').style.backgroundImage = "url('../../Images/icons/silkicons/user_go.png')"; 
    } else {
        $('#tabs').tabs('select', subtitle);
        var currTab = $('#tabs').tabs('getSelected');
        var oldUrl = $(currTab.panel('options').content).attr('src'); /// <reference path="../../Images/icons/silkicons/user_go.png" />

        if (oldUrl != url) {
            $('#tabs').tabs('update', {
                tab: currTab,
                options: {
                    content: createFrame(url)
                }
            })
        }
        //$('#mm-tabupdate').click();
    }
	tabClose();
}

function createFrame(url)
{
	var s = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
	return s;
}

function tabClose()
{
	/*双击关闭TAB选项卡*/
	$(".tabs-inner").dblclick(function(){
		var subtitle = $(this).children(".tabs-closable").text();
		$('#tabs').tabs('close',subtitle);
	})
	/*为选项卡绑定右键*/
	$(".tabs-inner").bind('contextmenu',function(e){
		$('#mm').menu('show', {
			left: e.pageX,
			top: e.pageY
		});

		var subtitle =$(this).children(".tabs-closable").text();

		$('#mm').data("currtab",subtitle);
		$('#tabs').tabs('select',subtitle);
		return false;
	});
}
//绑定右键菜单事件
function tabCloseEven()
{
	//刷新
	$('#mm-tabupdate').click(function(){
		var currTab = $('#tabs').tabs('getSelected');
		var url = $(currTab.panel('options').content).attr('src');
		$('#tabs').tabs('update',{
			tab:currTab,
			options:{
				content:createFrame(url)
			}
		})
	})
	//关闭当前
	$('#mm-tabclose').click(function () {
	    var currtab_title = $('#mm').data("currtab");
	    $('#tabs').tabs('close', currtab_title);
	})
	//全部关闭
	$('#mm-tabcloseall').click(function () {
	    $('.tabs-inner span').each(function (i, n) {
	        if (i != 0) {
	            var t = $(n).text();
	            $('#tabs').tabs('close', t);
	        }
	    });
	});
	//关闭除当前之外的TAB
	$('#mm-tabcloseother').click(function(){
		$('#mm-tabcloseright').click();
		$('#mm-tabcloseleft').click();
	});
	//关闭当前右侧的TAB
	$('#mm-tabcloseright').click(function(){
		var nextall = $('.tabs-selected').nextAll();
		if(nextall.length==0){
			//msgShow('系统提示','后边没有啦~~','error');
			alert('后边没有啦~~');
			return false;
		}
		nextall.each(function(i,n){
			var t=$('a:eq(0) span',$(n)).text();
			$('#tabs').tabs('close',t);
		});
		return false;
	});
	//关闭当前左侧的TAB
	$('#mm-tabcloseleft').click(function () {
	    var prevall = $('.tabs-selected').prevAll();
	    if (prevall.length == 0) {
	        alert('到头了，前边没有啦~~');
	        return false;
	    }
	    prevall.each(function (i, n) {
	        if ((prevall.length-1) != i){
	            var t = $('a:eq(0) span', $(n)).text();
	            $('#tabs').tabs('close', t);
	        }
	    });
	    return false;
	});

	//退出
	$("#mm-exit").click(function(){
		$('#mm').menu('hide');
	})
}

//弹出信息窗口 title:标题 msgString:提示信息 msgType:信息类型 [error,info,question,warning]
function msgShow(title, msgString, msgType) {
	$.messager.alert(title, msgString, msgType);
}



//关闭window窗口提示并刷新指定的tab标签页
//tabtitle  指定的tab标签页
//title  提示框标题
//context  提示内容
function setselectedtab(title, context ,tabtitle) {
    $.messager.alert(title, context, 'info');
    $('#pwin').window('close');
    $('#tabs').tabs('update', {
        tab: $('#tabs').tabs('getTab', tabtitle),
        options: {
            selected: true
        }
    });
}

//关闭window窗口提示并刷新当前打开的tab标签页
//title 提示框标题
//context 提示内容
function setselectedtab(title, context) {
    $.messager.alert(title, context, 'info');
    $('#pwin').window('close');
    $('#tabs').tabs('update', {
        tab: $('#tabs').tabs('getSelected'),
        options: {
            selected: true
        }
    });
}

//关闭window窗口提示并刷新当前打开的tab标签页
//title 提示框标题
//context 提示内容
function parentab(title, context) {
    $.messager.alert(title, context, 'info');
    $('#pwin').window('close');
    history.go(0);
}