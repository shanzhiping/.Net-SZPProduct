
function crossDomain() {
    var isCross = false;
    try {
        var url = parent.document;
        if (url == undefined) {
            isCross = true;
        }
    } catch (e) {
        isCross = true;
    }
    return isCross;
}

function getCrossFrame() {
    var f = document.createElement("iframe");
    f.style.height = "0px";
    f.style.width = "0px";
    //document.appendChild(f);
    document.body.appendChild(f);
    return f;
}

function getCookie(name) {
    var mn = name + "=";
    var b, e;
    var co = document.cookie;
    if (mn == "=") {
        return co;
    }
    b = co.indexOf(mn);
    if (b < 0) {
        return "";
    }
    e = co.indexOf(";", b + name.length);
    if (e < 0) {
        return co.substring(b + name.length + 1);
    } else {
        return co.substring(b + name.length + 1, e);
    }
}

function crossAction(fname, args) {
    var cf = getCrossFrame();
    var ssosvr = getCookie("passport");
    if (ssosvr == "") {
        ssosvr = document.referrer;
    } else {
        if (ssosvr.substring(0, 1) == "\"") {
            ssosvr = ssosvr.substring(1, ssosvr.length - 1);
        }
    }
    var src = ssosvr.substring(0, ssosvr.toString().indexOf("/", 10))
			+ "/crossjs.htm";
    src += "#" + fname + ":" + args;
    cf.src = src;
}

function getLocalRoot() {
    return document.location.href.substring(0, document.location.href.indexOf("/", 10));
}

function openWin(url, width, height, title) {
    var icon = "save";
    if (url.indexOf("add") > 0) {
        icon = "add";
    }
    if (url.indexOf("edit") > 0) {
        icon = "edit";
    }
    if (url.indexOf("del") > 0) {
        icon = "cut";
    }
    var host = getLocalRoot(); //获取主机头
    //跨域
    if (crossDomain()) {
        //var host = getLocalRoot();
        crossAction("openWin", "'" + host + url + "'," + width + "," + height + ",'" + title + "'");
        //crossAction("openWin", "url=" + escape(host + url) + "&width=" + width + "&height=" + height + "&icon=" + icon + "&title=" + escape(title));
        return;
    }

    var $parent = self.parent.$;
    $parent('#pwin').window(
			{
			    modal: true,
			    width: width,
			    height: height,
			    content: "<iframe scrolling='auto' frameborder='0'  src='"
						+ host + url + "' style='width:100%;height:100%;'></iframe>",
			    iconCls: "icon-" + icon,
			    minimizable: false,
			    maximizable: false,
			    collapsible: false,
			    title: title
			});
}

function openTab(url, title) {
    //检查跨域
    if (crossDomain()) {
        var host = getLocalRoot();
        crossAction("openTab", "'" + host + url + "','" + title + "'");
        //crossAction("addTab", "url=" + escape(host + url) + "&title=" + escape(title));
    } else {
        self.parent.addTab(title, url, "icon icon-nav")
    }
}

function refreshTab() {
    if (crossDomain()) {
        crossAction("refreshTab");
    } else {
        var $parent = self.parent.$;
        $parent('#mm-tabupdate').click();
    }
}

function tabNavigate(url) {
    if (crossDomain()) {
        var host = "";
        if (url.substring(0, 1) == "/")
            host = getLocalRoot();
        crossAction("tabNavigate", "url=" + escape(host + url));
    } else {
        self.parent.tabNavigate(url);
    }
}

function closeWin() {
    if (crossDomain()) {
        crossAction("closeWin");
    } else {
        var $parent = self.parent.$;
        $parent('#pwin').window("close");
    }
}