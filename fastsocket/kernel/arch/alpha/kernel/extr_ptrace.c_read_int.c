
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int EIO ;
 int access_process_vm (struct task_struct*,unsigned long,int*,int,int ) ;

__attribute__((used)) static inline int
read_int(struct task_struct *task, unsigned long addr, int * data)
{
 int copied = access_process_vm(task, addr, data, sizeof(int), 0);
 return (copied == sizeof(int)) ? 0 : -EIO;
}
