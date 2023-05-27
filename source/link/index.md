---
date: '2022-11-25T14:40:32+08:00'
title: 友情链接
top_img: false
type: link
updated: 2023-5-27T21:25:36.208+8:0
---
# 真正的友链

{% raw %}

<div id="qexo-friends"></div>
<link rel="stylesheet" href="https://unpkg.com/qexo-static@1.6.0/hexo/friends.css"/>

<script src="https://unpkg.com/qexo-static@1.6.0/hexo/friends.js"></script>

<script>loadQexoFriends("qexo-friends", "https://edit.felixesintot.top")</script>

<link rel="stylesheet" href="https://unpkg.com/apursuer-qexo-friend-links@1.0.2/apursuer-hexo-friend-links.css"/>
{% endraw %}
# 申请友链
{% raw %}
<article class="message is-info">
    <div class="message-header">
        申请友链
    </div>
    <div class="message-body">
        <div class="form-ask-friend">
            <div class="field">
                <label class="label">站名</label>
                <div class="control has-icons-left">
                    <input class="input" type="text" placeholder="你的博客名" id="friend-name" required>
                    <span class="icon is-small is-left">
                        <i class="fas fa-signature"></i>
                    </span>
                </div>
            </div>
            <div class="field">
                <label class="label">链接</label>
            <div class="control has-icons-left">
                <input class="input" type="url" placeholder="指向你博客主页的链接" id="friend-link" required>
                <span class="icon is-small is-left">
                    <i class="fas fa-link"></i>
                </span>
            </div>
            <p class="help ">请确保网站可访问！</p>
            </div>
            <div class="field">
                <label class="label">图标</label>
                <div class="control has-icons-left">
                    <input class="input" type="url" placeholder="您的网站图标（尽可能使用圆形图标）" id="friend-icon" required>
                    <span class="icon is-small is-left">
                        <i class="fas fa-image"></i>
                    </span>
                </div>
            </div>
            <div class="field">
                <label class="label">描述</label>
                <div class="control has-icons-left">
                    <input class="input" type="text" placeholder="用一句简要的话描述你的博客" id="friend-des" required>
                    <span class="icon is-small is-left">
                        <i class="fas fa-info"></i>
                    </span>
                </div>
            </div>
            <div class="field">
                <div class="control">
                    <label class="checkbox">
                        <input type="checkbox" id="friend-check"/> 我不是在提交毫无意义的信息。
                    </label>
                </div>
            </div>
            <div class="field is-grouped">
                <div class="control">
                    <button class="button is-info" type="submit" onclick="askFriend(event)">发射申请！</button>
                </div>
            </div>
        </div>
    </div>
</article>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script>
function TestUrl(url) {
    var Expression=/http(s)?:\/\/([\w-]+\.)+[\w-]+(\/[\w- .\/?%&=]*)?/;
    var objExp=new RegExp(Expression);
    if(objExp.test(url) != true){
        return false;
    }
    return true;
}
function askFriend (event) {
    let check = $("#friend-check").is(":checked");
    let name = $("#friend-name").val();
    let url = $("#friend-link").val();
    let image = $("#friend-icon").val();
    let des = $("#friend-des").val();
    if(!check){
        alert("请确认 \"我不是在提交毫无意义的信息。\" 并打钩。");
        return;
    }
    if(!(name&&url&&image&&des)){
        alert("请填写完整信息！");
        return;
    }
    if (!(TestUrl(url))){
        alert("URL 格式错误！需要包含 HTTP(s) 协议头！");
        return;
    }
    if (!(TestUrl(image))){
        alert("图标 URL 的格式错误！需要包含 HTTP(s) 协议头！");
        return;
    }
    event.target.classList.add('is-loading');
    grecaptcha.ready(function() {
          grecaptcha.execute('6Lf1cW4jAAAAAIrzxKrY90W84_F3X3mnw211EXUQ', {action: 'submit'}).then(function(token) {
              $.ajax({
                type: 'get',
                cache: false,
                url: url,
                dataType: "jsonp",
                async: false,
                processData: false,
                //timeout:10000, 
                complete: function (data) {
                    if(data.status==200){
                    $.ajax({
                        type: 'POST',
                        dataType: "json",
                        data: {
                            "name": name,
                            "url": url,
                            "image": image,
                            "description": des,
                            "verify": token,
                        },
                        url: 'https://edit.felixesintot.top/pub/ask_friend/',
                        success: function (data) {
                            alert(data.msg);
                        }
                    });}
                    else{
                        alert("无法访问 URL！");
                    }
                    event.target.classList.remove('is-loading');
                }
          });
        });
    });
}
</script>
{% endraw %}

