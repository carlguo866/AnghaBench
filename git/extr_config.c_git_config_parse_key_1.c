
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_INVALID_KEY ;
 int CONFIG_NO_SECTION_OR_NAME ;
 int FREE_AND_NULL (char*) ;
 int _ (char*) ;
 int error (int ,char const*) ;
 int isalpha (unsigned char) ;
 int iskeychar (unsigned char) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;
 unsigned char tolower (unsigned char) ;
 char* xmallocz (int ) ;

__attribute__((used)) static int git_config_parse_key_1(const char *key, char **store_key, int *baselen_, int quiet)
{
 int i, dot, baselen;
 const char *last_dot = strrchr(key, '.');






 if (last_dot == ((void*)0) || last_dot == key) {
  if (!quiet)
   error(_("key does not contain a section: %s"), key);
  return -CONFIG_NO_SECTION_OR_NAME;
 }

 if (!last_dot[1]) {
  if (!quiet)
   error(_("key does not contain variable name: %s"), key);
  return -CONFIG_NO_SECTION_OR_NAME;
 }

 baselen = last_dot - key;
 if (baselen_)
  *baselen_ = baselen;




 if (store_key)
  *store_key = xmallocz(strlen(key));

 dot = 0;
 for (i = 0; key[i]; i++) {
  unsigned char c = key[i];
  if (c == '.')
   dot = 1;

  if (!dot || i > baselen) {
   if (!iskeychar(c) ||
       (i == baselen + 1 && !isalpha(c))) {
    if (!quiet)
     error(_("invalid key: %s"), key);
    goto out_free_ret_1;
   }
   c = tolower(c);
  } else if (c == '\n') {
   if (!quiet)
    error(_("invalid key (newline): %s"), key);
   goto out_free_ret_1;
  }
  if (store_key)
   (*store_key)[i] = c;
 }

 return 0;

out_free_ret_1:
 if (store_key) {
  FREE_AND_NULL(*store_key);
 }
 return -CONFIG_INVALID_KEY;
}
