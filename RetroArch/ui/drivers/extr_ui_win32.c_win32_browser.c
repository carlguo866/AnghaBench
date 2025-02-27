
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* open ) (TYPE_2__*) ;} ;
typedef TYPE_1__ ui_browser_window_t ;
struct TYPE_6__ {char* filters; char* title; char* path; int startdir; int window; } ;
typedef TYPE_2__ ui_browser_window_state_t ;
typedef int new_title ;
typedef int new_file ;
typedef int HWND ;


 int PATH_MAX ;
 int free (int ) ;
 int strdup (char const*) ;
 int string_is_empty (char const*) ;
 int strlcpy (char*,char const*,size_t) ;
 int stub1 (TYPE_2__*) ;
 TYPE_1__* ui_companion_driver_get_browser_window_ptr () ;

__attribute__((used)) static bool win32_browser(
      HWND owner,
      char *filename,
      size_t filename_size,
      const char *extensions,
      const char *title,
      const char *initial_dir)
{
   bool result = 0;
   const ui_browser_window_t *browser =
      ui_companion_driver_get_browser_window_ptr();

   if (browser)
   {
      ui_browser_window_state_t browser_state;





      char new_title[PATH_MAX];
      char new_file[32768];

      new_title[0] = '\0';
      new_file[0] = '\0';

      if (!string_is_empty(title))
         strlcpy(new_title, title, sizeof(new_title));

      if (filename && *filename)
         strlcpy(new_file, filename, sizeof(new_file));



      browser_state.filters = (char*)extensions;
      browser_state.title = new_title;
      browser_state.startdir = strdup(initial_dir);
      browser_state.path = new_file;
      browser_state.window = owner;

      result = browser->open(&browser_state);

      if (filename && browser_state.path)
         strlcpy(filename, browser_state.path, filename_size);

      free(browser_state.startdir);
   }

   return result;
}
