
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _GLFW_REQUIRE_INIT_OR_RETURN (double) ;
 double _glfwPlatformGetTime () ;

double glfwGetTime(void)
{
    _GLFW_REQUIRE_INIT_OR_RETURN(0.0);
    return _glfwPlatformGetTime();
}
