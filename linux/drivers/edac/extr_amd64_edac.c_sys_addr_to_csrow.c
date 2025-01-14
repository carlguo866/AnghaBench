
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct mem_ctl_info {int dummy; } ;


 int amd64_mc_err (struct mem_ctl_info*,char*,unsigned long) ;
 int input_addr_to_csrow (struct mem_ctl_info*,int ) ;
 int sys_addr_to_input_addr (struct mem_ctl_info*,scalar_t__) ;

__attribute__((used)) static int sys_addr_to_csrow(struct mem_ctl_info *mci, u64 sys_addr)
{
 int csrow;

 csrow = input_addr_to_csrow(mci, sys_addr_to_input_addr(mci, sys_addr));

 if (csrow == -1)
  amd64_mc_err(mci, "Failed to translate InputAddr to csrow for "
      "address 0x%lx\n", (unsigned long)sys_addr);
 return csrow;
}
