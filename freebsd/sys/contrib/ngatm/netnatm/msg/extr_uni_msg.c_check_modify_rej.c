
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union uni_ieall {int dummy; } uni_ieall ;
typedef size_t u_int ;
struct unicx {int dummy; } ;
struct uni_modify_rej {int unrec; int * git; int notify; int cause; } ;


 int UNI_IE_CAUSE ;
 int UNI_IE_GIT ;
 int UNI_IE_NOTIFY ;
 int UNI_IE_UNREC ;
 size_t UNI_NUM_IE_GIT ;
 int uni_check_ie (int ,union uni_ieall*,struct unicx*) ;

__attribute__((used)) static int
check_modify_rej(struct uni_modify_rej *m, struct unicx *cx)
{
 int ret = 0;
 u_int i;

 ret |= uni_check_ie(UNI_IE_CAUSE, (union uni_ieall *)&m->cause, cx);
 ret |= uni_check_ie(UNI_IE_NOTIFY, (union uni_ieall *)&m->notify, cx);
 for(i = 0; i < UNI_NUM_IE_GIT ; i++) {
  ret |= uni_check_ie(UNI_IE_GIT, (union uni_ieall *)&m->git[i], cx);
 }
 ret |= uni_check_ie(UNI_IE_UNREC, (union uni_ieall *)&m->unrec, cx);

 return ret;
}
