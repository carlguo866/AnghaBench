
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_device_t ;


 int GL_STENCIL_TEST ;
 int UNUSED_PARAMETER (int *) ;
 int gl_disable (int ) ;
 int gl_enable (int ) ;

void device_enable_stencil_test(gs_device_t *device, bool enable)
{
 if (enable)
  gl_enable(GL_STENCIL_TEST);
 else
  gl_disable(GL_STENCIL_TEST);

 UNUSED_PARAMETER(device);
}
