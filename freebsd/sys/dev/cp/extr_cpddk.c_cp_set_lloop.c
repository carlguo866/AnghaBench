
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int f; scalar_t__ y; int l53; int l26; TYPE_6__* d; int l64; int l38; } ;
typedef TYPE_1__ e ;
struct TYPE_11__ {int f; } ;


 int cp_set_baud (TYPE_1__*,scalar_t__) ;
 int i (TYPE_1__*,int,int) ;
 int l (TYPE_6__*,int ,int) ;
 int l106 (TYPE_1__*,int,unsigned char) ;
 int l226 (TYPE_1__*) ;
 int l227 (TYPE_1__*) ;
 int l68 (TYPE_1__*) ;

void
cp_set_lloop(e*a,int m){{if(!((a->f==1&&a->y==0)||a->f==6))goto l780;
return;l780:;}a->l53=(m!=0);{if(!(a->f==3))goto l781;{{if(!(a->l53))goto
l390;{a->l26|=16;{if(!(a->l38))goto l783;i(a,168,64);l783:;}}goto l391
;l390:;{a->l26&=~16;{if(!(a->l38))goto l785;i(a,168,0);l785:;}}l391:;
}l(a->d,a->l64,a->l26);l227(a);l226(a);}goto l392;l781:;{if(!(a->f==2
))goto l787;{unsigned char l203=1|4;{if(!(a->l53))goto l788;l203|=64;
l788:;}l106(a,16,l203);}goto l801;l787:;{if(!(a->d->f==2))goto l802;{
l68(a);}goto l803;l802:;cp_set_baud(a,a->y);l803:;}l801:;}l392:;}}
