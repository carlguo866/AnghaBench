
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rcom {void* rc_seq_reply; void* rc_seq; void* rc_id; void* rc_result; void* rc_type; int rc_header; } ;


 int header_in (int *) ;
 void* le32_to_cpu (void*) ;
 void* le64_to_cpu (void*) ;

void dlm_rcom_in(struct dlm_rcom *rc)
{
 header_in(&rc->rc_header);

 rc->rc_type = le32_to_cpu(rc->rc_type);
 rc->rc_result = le32_to_cpu(rc->rc_result);
 rc->rc_id = le64_to_cpu(rc->rc_id);
 rc->rc_seq = le64_to_cpu(rc->rc_seq);
 rc->rc_seq_reply = le64_to_cpu(rc->rc_seq_reply);
}
