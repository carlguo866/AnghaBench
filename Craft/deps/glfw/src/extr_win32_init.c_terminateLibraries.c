
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ instance; } ;
struct TYPE_7__ {scalar_t__ instance; } ;
struct TYPE_6__ {scalar_t__ instance; } ;
struct TYPE_9__ {TYPE_3__ dwmapi; TYPE_2__ user32; TYPE_1__ winmm; } ;
struct TYPE_10__ {TYPE_4__ win32; } ;


 int FreeLibrary (scalar_t__) ;
 TYPE_5__ _glfw ;

__attribute__((used)) static void terminateLibraries(void)
{
    if (_glfw.win32.winmm.instance)
        FreeLibrary(_glfw.win32.winmm.instance);

    if (_glfw.win32.user32.instance)
        FreeLibrary(_glfw.win32.user32.instance);

    if (_glfw.win32.dwmapi.instance)
        FreeLibrary(_glfw.win32.dwmapi.instance);
}
