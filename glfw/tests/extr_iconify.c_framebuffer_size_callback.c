
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 double glfwGetTime () ;
 int printf (char*,double,int,int) ;

__attribute__((used)) static void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    printf("%0.2f Framebuffer resized to %ix%i\n", glfwGetTime(), width, height);
}
