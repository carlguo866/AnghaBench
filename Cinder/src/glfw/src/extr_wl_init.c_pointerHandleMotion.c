
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wl_fixed_t ;
typedef int uint32_t ;
struct wl_pointer {int dummy; } ;
struct TYPE_7__ {void* cursorPosY; void* cursorPosX; } ;
struct TYPE_8__ {scalar_t__ cursorMode; TYPE_2__ wl; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_6__ {TYPE_3__* pointerFocus; } ;
struct TYPE_9__ {TYPE_1__ wl; } ;


 scalar_t__ GLFW_CURSOR_DISABLED ;
 TYPE_5__ _glfw ;
 int _glfwInputCursorPos (TYPE_3__*,void*,void*) ;
 void* wl_fixed_to_double (int ) ;

__attribute__((used)) static void pointerHandleMotion(void* data,
                                struct wl_pointer* pointer,
                                uint32_t time,
                                wl_fixed_t sx,
                                wl_fixed_t sy)
{
    _GLFWwindow* window = _glfw.wl.pointerFocus;

    if (!window)
        return;

    if (window->cursorMode == GLFW_CURSOR_DISABLED)
        return;
    else
    {
        window->wl.cursorPosX = wl_fixed_to_double(sx);
        window->wl.cursorPosY = wl_fixed_to_double(sy);
    }

    _glfwInputCursorPos(window,
                        wl_fixed_to_double(sx),
                        wl_fixed_to_double(sy));
}
