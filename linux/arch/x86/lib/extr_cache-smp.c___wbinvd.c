
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wbinvd () ;

__attribute__((used)) static void __wbinvd(void *dummy)
{
 wbinvd();
}
