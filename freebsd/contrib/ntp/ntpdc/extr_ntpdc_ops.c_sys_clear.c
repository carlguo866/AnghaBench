
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
typedef int FILE ;


 int REQ_CLR_SYS_FLAG ;
 int doset (struct parse*,int *,int ) ;

__attribute__((used)) static void
sys_clear(
 struct parse *pcmd,
 FILE *fp
 )
{
 doset(pcmd, fp, REQ_CLR_SYS_FLAG);
}
