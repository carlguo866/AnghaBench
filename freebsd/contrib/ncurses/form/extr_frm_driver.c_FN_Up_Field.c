
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int current; } ;
typedef TYPE_1__ FORM ;


 int T (int ) ;
 int T_CALLED (char*) ;
 int Upper_Neighbor_Field (int ) ;
 int _nc_Set_Current_Field (TYPE_1__*,int ) ;
 int returnCode (int ) ;

__attribute__((used)) static int
FN_Up_Field(FORM *form)
{
  T((T_CALLED("FN_Up_Field(%p)"), (void *)form));
  returnCode(_nc_Set_Current_Field(form,
       Upper_Neighbor_Field(form->current)));
}
