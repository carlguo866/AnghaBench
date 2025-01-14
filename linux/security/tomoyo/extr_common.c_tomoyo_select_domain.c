
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int print_this_domain_only; int eof; int * domain; } ;
struct TYPE_4__ {struct tomoyo_domain_info* domain; } ;
struct tomoyo_io_buffer {TYPE_3__ r; int read_buf; TYPE_1__ w; } ;
struct tomoyo_domain_info {scalar_t__ is_deleted; int list; } ;
struct task_struct {int dummy; } ;
struct TYPE_5__ {struct tomoyo_domain_info* domain_info; } ;


 struct task_struct* find_task_by_pid_ns (unsigned int,int *) ;
 struct task_struct* find_task_by_vpid (unsigned int) ;
 int init_pid_ns ;
 int memset (TYPE_3__*,int ,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sscanf (char const*,char*,unsigned int*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 scalar_t__ tomoyo_domain_def (char const*) ;
 struct tomoyo_domain_info* tomoyo_find_domain (char const*) ;
 struct tomoyo_domain_info* tomoyo_find_domain_by_qid (unsigned int) ;
 int tomoyo_io_printf (struct tomoyo_io_buffer*,char*,...) ;
 TYPE_2__* tomoyo_task (struct task_struct*) ;

__attribute__((used)) static bool tomoyo_select_domain(struct tomoyo_io_buffer *head,
     const char *data)
{
 unsigned int pid;
 struct tomoyo_domain_info *domain = ((void*)0);
 bool global_pid = 0;

 if (strncmp(data, "select ", 7))
  return 0;
 data += 7;
 if (sscanf(data, "pid=%u", &pid) == 1 ||
     (global_pid = 1, sscanf(data, "global-pid=%u", &pid) == 1)) {
  struct task_struct *p;

  rcu_read_lock();
  if (global_pid)
   p = find_task_by_pid_ns(pid, &init_pid_ns);
  else
   p = find_task_by_vpid(pid);
  if (p)
   domain = tomoyo_task(p)->domain_info;
  rcu_read_unlock();
 } else if (!strncmp(data, "domain=", 7)) {
  if (tomoyo_domain_def(data + 7))
   domain = tomoyo_find_domain(data + 7);
 } else if (sscanf(data, "Q=%u", &pid) == 1) {
  domain = tomoyo_find_domain_by_qid(pid);
 } else
  return 0;
 head->w.domain = domain;

 if (!head->read_buf)
  return 1;
 memset(&head->r, 0, sizeof(head->r));
 head->r.print_this_domain_only = 1;
 if (domain)
  head->r.domain = &domain->list;
 else
  head->r.eof = 1;
 tomoyo_io_printf(head, "# select %s\n", data);
 if (domain && domain->is_deleted)
  tomoyo_io_printf(head, "# This is a deleted domain.\n");
 return 1;
}
