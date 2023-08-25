---
date: '2022-10-24T12:23:18+08:00'
title: 帮助
top_img: false
type: about
updated: 2023-8-25T19:43:25.775+8:0
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




