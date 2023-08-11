---
abbrlink: ''
categories:
- - 题解
date: '2023-08-11T23:30:16.482488+08:00'
tags:
- 数论
title: 【题解】[ABC270G] Sequence in mod P
top_img: false
updated: 2023-8-11T23:30:16.810+8:0
---
[题目链接](https://www.luogu.com.cn/problem/AT_abc270_g)

推导相当简单，只要等比数列求和一代入，就结束了。

但特判有三个，还很隐蔽……

```c++
a==1          \\会使推导过程分母为0
a==0          \\会出现0的0次方
/*分母*/%p==0 \\逆元不存在
```

# 代码

```c++
#include<iostream>
#include<cstdio>
#include<iomanip>
#include<cstdlib>
#include<algorithm>
#include<random>
#include<ctime>
#include<cmath>
#include<cstring>
#include<queue>
#include<map>
#include<unordered_map>
#define fru(i,j,k) for(int i=j;i<=k;i++)
#define frd(i,j,k) for(int i=j;i>=k;i--)
#define fio(x) freopen(#x".in","r",stdin);freopen(#x".out","w",stdout);
#define pc(x) putchar(x)
using namespace std;
using ll = long long;
char c=' ';
int in(void)
{
	int x=0;bool bl=false;
	while(!isdigit(c))
	{
		bl^=c=='-';
		c=getchar();
	}
	while(isdigit(c))
	{
		x=(x<<1)+(x<<3)+(c^48);
		c=getchar();
	}
	return bl?-x:x; 
}
const int maxn=1012;
ll qp(ll a,ll b,ll p)
{
	ll ans=1;
	while(b)
	{
		if(b&1)(ans*=a)%=p;
		(a*=a)%=p;
		b>>=1;
	}
	return ans;
}
ll exgcd(ll a,ll b,ll& x,ll& y)
{
	if(!b)
	{
		x=1;y=0;
		return a;
	}
	ll tp=exgcd(b,a%b,y,x);
	y-=a/b*x;
	return tp;
}
ll inv(ll a,ll p)
{
	ll tx,ty;
	exgcd(a,p,tx,ty);
	return (tx%p+p)%p;
}
ll bsgs(ll a,ll b,ll p)
{
	map<ll,ll>mp;
	if(p==1||(b-1)%p==0)return 0;
	ll t=sqrt(p-1)+1,dc=1,tp;
	fru(i,0,t-1)
	{
		mp[dc*b%p]=i;
		(dc*=a)%=p;
	}
	tp=qp(a,t,p);dc=1;
	fru(i,1,t)
	{
		(dc*=tp)%=p;
		auto rs=mp.find(dc);
		if(rs!=mp.end())return i*t-rs->second;
	}
	return -1;
}
int T;
ll p,a,b,x,t,fz,fm,tp,tx,ty;
int main()
{
	// fio();
	T=in();
	while(T--)
	{
		p=in();a=in();b=in();x=in();t=in();
		fm=a*x-x+b;fz=t*a-t+b;
		// cout<<fm<<' '<<fz<<endl;
		if(a==1)
		{
			tp=exgcd(b,p,tx,ty);
			if((t-x)%tp)
				puts("-1");
			else
			{
				printf("%lld\n",(tx*(t-x)/tp%p+p)%p);
			}
			continue;
		}
		else if(!a)
		{
			if(t==x)puts("0");
			else if(t==b)puts("1");
			else puts("-1");
			continue;
		}
		else if(fm%p==0)
		{
			if(fz%p==0)puts("0");
			else puts("-1");
			continue;
		}
		printf("%lld\n",bsgs(a,(__int128)fz*inv(fm,p)%p,p));
	}
	return 0;
}
```
