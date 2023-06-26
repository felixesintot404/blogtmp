---
date: '2022-11-25T14:40:32+08:00'
title: 友情链接
top_img: false
type: link
updated: 2023-6-26T20:39:4.368+8:0
---
# 真正的友链

{% raw %}

<div id="qexo-friends"></div>
<link rel="stylesheet" href="https://unpkg.com/qexo-static@1.6.0/hexo/friends.css"/>

<script src="https://unpkg.com/qexo-static@1.6.0/hexo/friends.js"></script>

<script>loadQexoFriends("qexo-friends", "https://edit.felixesintot.top")</script>

<link rel="stylesheet" href="https://unpkg.com/apursuer-qexo-friend-links@1.0.2/apursuer-hexo-friend-links.css"/>
{% endraw %}
{% hideToggle 点我添加友链！ %}
请在评论区评论，并给出4项内容：
+ 您的博客名
+ 指向您博客主页的链接
+ 您的网站图标（尽可能使用圆形图标）
+ 您的博客的简要描述
{% raw %}
<link rel="stylesheet" href="https://unpkg.com/apursuer-qexo-friend-links@1.0.2/apursuer-hexo-friend-links.css"/>  <article class="message is-info">     <div class="message-header">         Apply for friend chain     </div>     <div class="message-body">         <div class="form-ask-friend">             <div class="field">                 <label class="label">Name</label>                 <div class="control has-icons-left">                     <input class="input" type="text" placeholder="Your site name" id="friend-name" required>                     <span class="icon is-small is-left">                         <i class="fas fa-signature"></i>                     </span>                 </div>             </div>             <div class="field">                 <label class="label">Link</label>             <div class="control has-icons-left">                 <input class="input" type="url" placeholder="A link to your site's homepage" id="friend-link" required>                 <span class="icon is-small is-left">                     <i class="fas fa-link"></i>                 </span>             </div>             <p class="help ">Please make sure the site is accessible!</p>             </div>             <div class="field">                 <label class="label">Icon</label>                 <div class="control has-icons-left">                     <input class="input" type="url" placeholder="Your website icon (as round as possible)" id="friend-icon" required>                     <span class="icon is-small is-left">                         <i class="fas fa-image"></i>                     </span>                 </div>             </div>             <div class="field">                 <label class="label">Description</label>                 <div class="control has-icons-left">                     <input class="input" type="text" placeholder="Please describe your site in one sentence." id="friend-des" required>                     <span class="icon is-small is-left">                         <i class="fas fa-info"></i>                     </span>                 </div>             </div>             <div class="field">                 <div class="control">                     <label class="checkbox">                         <input type="checkbox" id="friend-check"/> I am not submitting nonsense information.                     </label>                 </div>             </div>             <div class="field is-grouped">                 <div class="control">                     <button class="button is-info" type="submit" onclick="askFriend(event)">Apply</button>                 </div>             </div>         </div>     </div> </article> <script src="https://recaptcha.net/recaptcha/api.js?render=6Lf1cW4jAAAAAFyw5UfKVGrw4zeP6FfAAUvvBm83"></script> <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script> <script> function TestUrl(url) {     var Expression=/http(s)?:\\/\\/([\\w-]+\\.)+[\\w-]+(\\/[\\w- .\\/?%&=]\*)?/;     var objExp=new RegExp(Expression);     if(objExp.test(url) != true){         return false;     }     return true; } function askFriend (event) {     let check = \$("#friend-check").is(":checked");     let name = \$("#friend-name").val();     let url = \$("#friend-link").val();     let image = \$("#friend-icon").val();     let des = \$("#friend-des").val();     if(!check){         alert("Please check \\"I am not submitting nonsense information\\"");         return;     }     if(!(name&&url&&image&&des)){         alert("The information is incomplete! ");         return;     }     if (!(TestUrl(url))){         alert("URL format error! Need to include HTTP protocol header! ");         return;     }     if (!(TestUrl(image))){         alert("The format of the slice URL is wrong! It needs to contain the HTTP protocol header! ");         return;     }     event.target.classList.add('is-loading');     grecaptcha.ready(function() {           grecaptcha.execute('6Lf1cW4jAAAAAFyw5UfKVGrw4zeP6FfAAUvvBm83', {action: 'submit'}).then(function(token) {               \$.ajax({                 type: 'get',                 cache: false,                 url: url,                 dataType: "jsonp",                 async: false,                 processData: false,                 //timeout:10000,                  complete: function (data) {                     if(data.status==200){                     \$.ajax({                         type: 'POST',                         dataType: "json",                         data: {                             "name": name,                             "url": url,                             "image": image,                             "description": des,                             "verify": token,                         },                         url: 'https://edit.felixesintot.top/pub/ask\_friend/',                         success: function (data) {                             alert(data.msg);                         }                     });}                     else{                         alert("The URL cannot be reached!");                     }                     event.target.classList.remove('is-loading');                 }           });         });     }); } </script>
{% endraw %}

我将定期手动添加！
{% endhideToggle %}

