---
date: '2022-10-24T12:23:18+08:00'
title: 帮助
top_img: false
type: about
updated: 2023-8-26T13:28:6.430+8:0
---
# 这是哪？

felixesintot的个人博客

# 你是谁？

这个作者是个蒟蒻，在WHK，OI上都被吊打。

> [![](/collect/image_shields/luogu.svg)](https://www.luogu.com.cn/user/289608)
> [![](/collect/image_shields/github.svg)](https://github.com/felixesintot/)
> [![](/collect/image_shields/codeforces.svg)](https://codeforces.com/profile/felixesintot)

# 你代码开头的鸟语是啥？

自认为我现在的码凤没那么奇怪了。

其实也没啥特别的，头文件等加起来也就14行。

```c++
#include<bits/stdc++.h>//头文件
#define fru(i,j,k) for(int i=j;i<=k;i++)
#define frd(i,j,k) for(int i=j;i>=k;i--)//使循环可以少打几个字的宏
#define fio(x) freopen(#x".in","r",stdin);freopen(#x".out","w",stdout);//文件读写
using namespace std;//std
using ll = long long;//相当于 #define ll long long
char c=' ';
int in(void)
{
    int x=0;bool f=false;
    while(!isdigit(c)){f^=c=='-';c=getchar();}
    while(isdigit(c)){x=(x<<1)+(x<<3)+(c^48);c=getchar();}
    return f?-x:x;
}//快读
```

# 你左下角播的都是啥歌？

以下时间线展示了我自2022以来左下角放的歌单或歌手名（若为歌手名表示该歌手的 TOP50 歌曲）（id 为网易云音乐的歌单或歌手 id）：

{% timeline 2022,blue %}

<!-- timeline 12月20日 -->

歌单：Terraria泰拉瑞亚BGM合集（id：360286071）

<!-- endtimeline -->

{% endtimeline %}
{% timeline 2023,blue %}

<!-- timeline 3月5日 -->

歌手：plum（id：49726260）

<!-- endtimeline -->
<!-- timeline 9月5日 -->

歌单：Musicbox 24/7 (Side AM)（id：8693121606）

<!-- endtimeline -->

{% endtimeline %}

