
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * handle; } ;
struct TYPE_5__ {scalar_t__ client; TYPE_1__ glx; } ;
struct TYPE_6__ {TYPE_2__ context; } ;
typedef TYPE_3__ _GLFWwindow ;
typedef int * GLXContext ;
typedef int GLFWwindow ;


 scalar_t__ GLFW_NO_API ;
 int GLFW_NO_WINDOW_CONTEXT ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 int _glfwInputError (int ,int *) ;

GLXContext glfwGetGLXContext(GLFWwindow* handle)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));

    if (window->context.client == GLFW_NO_API)
    {
        _glfwInputError(GLFW_NO_WINDOW_CONTEXT, ((void*)0));
        return ((void*)0);
    }

    return window->context.glx.handle;
}
