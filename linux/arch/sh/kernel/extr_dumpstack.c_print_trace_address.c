
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,char*) ;
 int printk_address (unsigned long,int) ;

__attribute__((used)) static void print_trace_address(void *data, unsigned long addr, int reliable)
{
 printk("%s", (char *)data);
 printk_address(addr, reliable);
}
