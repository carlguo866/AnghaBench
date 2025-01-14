
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int handle; } ;
struct TYPE_12__ {TYPE_1__ x11; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_11__ {int display; int restoreCursorPosY; int restoreCursorPosX; TYPE_3__* disabledCursorWindow; int cursor; } ;
struct TYPE_13__ {TYPE_2__ x11; } ;


 int ButtonPressMask ;
 int ButtonReleaseMask ;
 int CurrentTime ;
 int GLFW_CURSOR_DISABLED ;
 int GrabModeAsync ;
 int PointerMotionMask ;
 int True ;
 int XFlush (int ) ;
 int XGrabPointer (int ,int ,int ,int,int ,int ,int ,int ,int ) ;
 int XUngrabPointer (int ,int ) ;
 TYPE_9__ _glfw ;
 int _glfwPlatformGetCursorPos (TYPE_3__*,int *,int *) ;
 int _glfwPlatformSetCursorPos (TYPE_3__*,int ,int ) ;
 int centerCursor (TYPE_3__*) ;
 int updateCursorImage (TYPE_3__*) ;

void _glfwPlatformSetCursorMode(_GLFWwindow* window, int mode)
{
    if (mode == GLFW_CURSOR_DISABLED)
    {
        _glfw.x11.disabledCursorWindow = window;
        _glfwPlatformGetCursorPos(window,
                                  &_glfw.x11.restoreCursorPosX,
                                  &_glfw.x11.restoreCursorPosY);
        centerCursor(window);
        XGrabPointer(_glfw.x11.display, window->x11.handle, True,
                     ButtonPressMask | ButtonReleaseMask | PointerMotionMask,
                     GrabModeAsync, GrabModeAsync,
                     window->x11.handle, _glfw.x11.cursor, CurrentTime);
    }
    else if (_glfw.x11.disabledCursorWindow == window)
    {
        _glfw.x11.disabledCursorWindow = ((void*)0);
        XUngrabPointer(_glfw.x11.display, CurrentTime);
        _glfwPlatformSetCursorPos(window,
                                  _glfw.x11.restoreCursorPosX,
                                  _glfw.x11.restoreCursorPosY);
    }

    updateCursorImage(window);
    XFlush(_glfw.x11.display);
}
