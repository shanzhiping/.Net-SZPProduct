
//切换输入框状态
function switchInput(obj, cssFull, cssEmpty) {
    $(obj).focus(function () {
        $(obj).removeClass("empty");
    });
    $(obj).blur(function () {
        var txt_value = $(obj).val();
        if (txt_value == "") {
            $(obj).addClass("empty");
        }
    });
    if ($(obj).val() != "")
        $(obj).removeClass("empty");
}
//输出版权
function printCopyright() {
    document.write("&copy;");
    var today = new Date();
    var y = today.getFullYear();
    if (y > 2010)
        document.write("2003-");
    document.write(y);
}



//删除图片栏中的图片
function delThisImage(obj) {
    var parent = $(obj).parent();
    var val = parent.find("img").attr("src");
    $("#GalleryItems").val($("#GalleryItems").val().replace(val+";",""));
    parent.remove();
}
function insThisImage(obj) {
    var parent = $(obj).parent();
    var val = parent.find("img").attr("src").replace("Thumbnails", "Published");
    var data = CKEDITOR.instances.Description.getData();
    CKEDITOR.instances.Description.setData(data+"<img src='"+val+"' />");
 }