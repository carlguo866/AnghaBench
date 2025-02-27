
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct bfa_plog_s {scalar_t__ plog_enabled; } ;
struct TYPE_2__ {char* string_log; } ;
struct bfa_plog_rec_s {int mid; int eid; TYPE_1__ log_entry; int misc; int log_type; } ;
typedef enum bfa_plog_mid { ____Placeholder_bfa_plog_mid } bfa_plog_mid ;
typedef enum bfa_plog_eid { ____Placeholder_bfa_plog_eid } bfa_plog_eid ;


 int BFA_PL_LOG_TYPE_STRING ;
 int BFA_PL_STRING_LOG_SZ ;
 int bfa_plog_add (struct bfa_plog_s*,struct bfa_plog_rec_s*) ;
 int memset (struct bfa_plog_rec_s*,int ,int) ;
 int strncpy (char*,char*,int) ;

void
bfa_plog_str(struct bfa_plog_s *plog, enum bfa_plog_mid mid,
  enum bfa_plog_eid event,
  u16 misc, char *log_str)
{
 struct bfa_plog_rec_s lp;

 if (plog->plog_enabled) {
  memset(&lp, 0, sizeof(struct bfa_plog_rec_s));
  lp.mid = mid;
  lp.eid = event;
  lp.log_type = BFA_PL_LOG_TYPE_STRING;
  lp.misc = misc;
  strncpy(lp.log_entry.string_log, log_str,
   BFA_PL_STRING_LOG_SZ - 1);
  lp.log_entry.string_log[BFA_PL_STRING_LOG_SZ - 1] = '\0';
  bfa_plog_add(plog, &lp);
 }
}
