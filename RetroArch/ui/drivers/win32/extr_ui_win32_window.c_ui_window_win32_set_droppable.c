
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hwnd; } ;
typedef TYPE_1__ ui_window_win32_t ;


 int DragAcceptFiles_func (int ,int) ;

void ui_window_win32_set_droppable(void *data, bool droppable)
{

   ui_window_win32_t *window = (ui_window_win32_t*)data;
   if (DragAcceptFiles_func != ((void*)0))
      DragAcceptFiles_func(window->hwnd, droppable);
}
