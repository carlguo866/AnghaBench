
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int EXCMD ;


 int APPEND ;
 int ex_aci (int *,int *,int ) ;

int
ex_append(SCR *sp, EXCMD *cmdp)
{
 return (ex_aci(sp, cmdp, APPEND));
}
