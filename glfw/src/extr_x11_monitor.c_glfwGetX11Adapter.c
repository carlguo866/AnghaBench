
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int crtc; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;
typedef TYPE_2__ _GLFWmonitor ;
typedef int RRCrtc ;
typedef int GLFWmonitor ;


 int None ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int ) ;

RRCrtc glfwGetX11Adapter(GLFWmonitor* handle)
{
    _GLFWmonitor* monitor = (_GLFWmonitor*) handle;
    _GLFW_REQUIRE_INIT_OR_RETURN(None);
    return monitor->x11.crtc;
}
