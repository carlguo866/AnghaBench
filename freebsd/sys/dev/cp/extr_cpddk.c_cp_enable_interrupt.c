
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* k; } ;
typedef TYPE_1__ s ;
struct TYPE_5__ {unsigned long l70; int l144; scalar_t__ x; int f; } ;
typedef TYPE_2__ e ;



void cp_enable_interrupt(s*b,int m){e*a;{a=b->k;l886
:if(!(a<b->k+4))goto l554;goto l836;l878:++a;goto l886;l836:{if(!(a->
f))goto l657;{ * (volatile unsigned long* )((a)->x+84)=m?a->l70:~0;a
->l144=m?1:0;}l657:;}goto l878;l554:;}}
