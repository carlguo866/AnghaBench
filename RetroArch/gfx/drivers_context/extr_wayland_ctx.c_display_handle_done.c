
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_output {int dummy; } ;



__attribute__((used)) static void display_handle_done(void *data,
      struct wl_output *output)
{
   (void)data;
   (void)output;
}
