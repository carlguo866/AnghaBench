
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum frontend_architecture { ____Placeholder_frontend_architecture } frontend_architecture ;


 int FRONTEND_ARCH_PPC ;

enum frontend_architecture frontend_ps3_get_architecture(void)
{
   return FRONTEND_ARCH_PPC;
}
