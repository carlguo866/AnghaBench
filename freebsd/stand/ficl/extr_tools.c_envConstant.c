
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pad; int pSys; } ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_UNS ;


 unsigned int POPUNS () ;
 int ficlSetEnv (int ,int ,int ) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;
 int vmGetWordToPad (TYPE_1__*) ;

__attribute__((used)) static void envConstant(FICL_VM *pVM)
{
    unsigned value;





    vmGetWordToPad(pVM);
    value = POPUNS();
    ficlSetEnv(pVM->pSys, pVM->pad, (FICL_UNS)value);
    return;
}
