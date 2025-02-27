
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEY_ESC ;
 char* _ (char*) ;
 scalar_t__ conf_get_changed () ;
 int conf_write (int ) ;
 int dialog_clear () ;
 int dialog_yesno (int *,char*,int,int) ;
 int end_dialog (int ,int ) ;
 int filename ;
 int fprintf (int ,char*) ;
 char* getenv (char*) ;
 int printf (char*,char const*) ;
 int reset_subtitle () ;
 int save_and_exit ;
 int saved_x ;
 int saved_y ;
 int silent ;
 int stderr ;

__attribute__((used)) static int handle_exit(void)
{
 int res;

 save_and_exit = 1;
 reset_subtitle();
 dialog_clear();
 if (conf_get_changed())
  res = dialog_yesno(((void*)0),
       _("Do you wish to save your new configuration?\n"
         "(Press <ESC><ESC> to continue kernel configuration.)"),
       6, 60);
 else
  res = -1;

 end_dialog(saved_x, saved_y);

 switch (res) {
 case 0:
  if (conf_write(filename)) {
   fprintf(stderr, _("\n\n"
       "Error while writing of the configuration.\n"
       "Your configuration changes were NOT saved."
       "\n\n"));
   return 1;
  }

 case -1:
  if (!silent) {
   const char *is_cmake = getenv("IDF_CMAKE");
   const char *build_msg;
   if (is_cmake && is_cmake[0] == 'y')
    build_msg = _("Ready to use CMake (or 'idf.py build') to build the project.");
   else
    build_msg = _("Execute 'make' to start the build or try 'make help'.");
   printf(_("\n\n"
      "*** End of the configuration.\n"
      "*** %s\n\n"), build_msg);
  }
  res = 0;
  break;
 default:
  if (!silent)
   fprintf(stderr, _("\n\n"
       "Your configuration changes were NOT saved."
       "\n\n"));
  if (res != KEY_ESC)
   res = 0;
 }

 return res;
}
