
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int t4_cim_write (struct adapter*,unsigned int,int,unsigned int*) ;

__attribute__((used)) static int t4_cim_write1(struct adapter *adap, unsigned int addr,
    unsigned int val)
{
 return t4_cim_write(adap, addr, 1, &val);
}
