
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int number; int closeable; } ;
typedef TYPE_1__ Slot ;
typedef int GLFWwindow ;



 int GLFW_PRESS ;
 int counter ;
 char* get_action_name (int) ;
 char* get_key_name (int) ;
 char* get_mods_name (int) ;
 double glfwGetTime () ;
 TYPE_1__* glfwGetWindowUserPointer (int *) ;
 int printf (char*,char*,...) ;

__attribute__((used)) static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    Slot* slot = glfwGetWindowUserPointer(window);

    printf("%08x to %i at %0.3f: Key 0x%04x Scancode 0x%04x (%s) (with%s) was %s\n",
           counter++, slot->number, glfwGetTime(), key, scancode,
           get_key_name(key),
           get_mods_name(mods),
           get_action_name(action));

    if (action != GLFW_PRESS)
        return;

    switch (key)
    {
        case 128:
        {
            slot->closeable = !slot->closeable;

            printf("(( closing %s ))\n", slot->closeable ? "enabled" : "disabled");
            break;
        }
    }
}
