
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {int magic; struct msg_part* first; } ;
struct msg_part {int dummy; } ;


 int RM_INIT_MAGIC ;
 int RM_TMP_MAGIC ;
 int assert (int) ;
 int memset (struct raw_message*,int ,int) ;
 int msg_part_decref (struct msg_part*) ;
 int rwm_total_msgs ;

int rwm_free (struct raw_message *raw) {
  struct msg_part *mp = raw->first;
  int t = raw->magic;
  assert (raw->magic == RM_INIT_MAGIC || raw->magic == RM_TMP_MAGIC);
  rwm_total_msgs --;
  memset (raw, 0, sizeof (*raw));
  return t == RM_TMP_MAGIC ? 0 : msg_part_decref (mp);
}
