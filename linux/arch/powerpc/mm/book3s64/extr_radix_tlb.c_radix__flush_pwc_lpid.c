
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RIC_FLUSH_PWC ;
 int _tlbie_lpid (unsigned int,int ) ;

void radix__flush_pwc_lpid(unsigned int lpid)
{
 _tlbie_lpid(lpid, RIC_FLUSH_PWC);
}
