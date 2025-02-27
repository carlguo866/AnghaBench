
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chp_id {int cssid; int id; } ;
struct chp_link {struct chp_id chpid; } ;
struct channel_path {int lock; } ;


 int CIO_TRACE_EVENT (int,char*) ;
 int __s390_process_res_acc ;
 scalar_t__ chp_get_status (struct chp_id) ;
 int chp_update_desc (struct channel_path*) ;
 struct channel_path* chpid_to_chp (struct chp_id) ;
 int css_schedule_reprobe () ;
 int css_wait_for_slow_path () ;
 int for_each_subchannel_staged (int ,int *,struct chp_link*) ;
 int memset (struct chp_link*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int,int) ;

void chsc_chp_online(struct chp_id chpid)
{
 struct channel_path *chp = chpid_to_chp(chpid);
 struct chp_link link;
 char dbf_txt[15];

 sprintf(dbf_txt, "cadd%x.%02x", chpid.cssid, chpid.id);
 CIO_TRACE_EVENT(2, dbf_txt);

 if (chp_get_status(chpid) != 0) {
  memset(&link, 0, sizeof(struct chp_link));
  link.chpid = chpid;

  css_wait_for_slow_path();

  mutex_lock(&chp->lock);
  chp_update_desc(chp);
  mutex_unlock(&chp->lock);

  for_each_subchannel_staged(__s390_process_res_acc, ((void*)0),
        &link);
  css_schedule_reprobe();
 }
}
