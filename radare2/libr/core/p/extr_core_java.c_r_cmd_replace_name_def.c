
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut32 ;


 int free (char*) ;
 char* malloc (scalar_t__) ;
 char* r_cmd_replace_name (char*,scalar_t__,char*,scalar_t__,char const*,scalar_t__,scalar_t__*) ;
 int snprintf (char*,scalar_t__,char const*,char const*) ;

__attribute__((used)) static char * r_cmd_replace_name_def (const char *s_new, ut32 replace_len, const char *s_old, ut32 match_len, const char *buffer, ut32 buf_len, ut32 *res_len) {
 const char * fmt = "L%s;";
 char *s_new_ref = s_new && replace_len > 0 ? malloc (3 + replace_len) : ((void*)0);
 char *s_old_ref = s_old && match_len > 0 ? malloc (3 + match_len) : ((void*)0);
 char *result = ((void*)0);
 *res_len = 0;
 if (s_new_ref && s_old_ref) {
  snprintf (s_new_ref, replace_len+3, fmt, s_new);
  snprintf (s_old_ref, match_len+3, fmt, s_old);
  result = r_cmd_replace_name (s_new_ref, replace_len+2, s_old_ref, match_len+2, buffer, buf_len, res_len);
 }
 free (s_new_ref);
 free (s_old_ref);
 return result;
}
