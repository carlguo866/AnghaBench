
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi_msg {int dummy; } ;


 int atomic_dec (int *) ;
 int panic_done_count ;

__attribute__((used)) static void dummy_smi_done_handler(struct ipmi_smi_msg *msg)
{
 atomic_dec(&panic_done_count);
}
