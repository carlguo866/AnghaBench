
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_list_t ;


 int MENU_ENUM_LABEL_VALUE_CHEEVOS_UNSUPPORTED_ENTRY ;
 char const* msg_hash_to_str (int ) ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static void menu_action_setting_disp_set_label_cheevos_unsupported_entry(
   file_list_t* list,
   unsigned *w, unsigned type, unsigned i,
   const char *label,
   char *s, size_t len,
   const char *path,
   char *s2, size_t len2)
{
   *w = 19;
   strlcpy(s2, path, len2);
   strlcpy(s,
      msg_hash_to_str(MENU_ENUM_LABEL_VALUE_CHEEVOS_UNSUPPORTED_ENTRY), len);
}
