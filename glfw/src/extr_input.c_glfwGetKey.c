
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* keys; } ;
typedef TYPE_1__ _GLFWwindow ;
typedef int GLFWwindow ;


 int GLFW_INVALID_ENUM ;
 int GLFW_KEY_LAST ;
 int GLFW_KEY_SPACE ;
 int GLFW_PRESS ;
 int GLFW_RELEASE ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int) ;
 scalar_t__ _GLFW_STICK ;
 int _glfwInputError (int ,char*,int) ;
 int assert (int ) ;

int glfwGetKey(GLFWwindow* handle, int key)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    assert(window != ((void*)0));

    _GLFW_REQUIRE_INIT_OR_RETURN(GLFW_RELEASE);

    if (key < GLFW_KEY_SPACE || key > GLFW_KEY_LAST)
    {
        _glfwInputError(GLFW_INVALID_ENUM, "Invalid key %i", key);
        return GLFW_RELEASE;
    }

    if (window->keys[key] == _GLFW_STICK)
    {

        window->keys[key] = GLFW_RELEASE;
        return GLFW_PRESS;
    }

    return (int) window->keys[key];
}
