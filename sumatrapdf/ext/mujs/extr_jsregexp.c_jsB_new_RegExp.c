
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_3__ {char* source; int flags; } ;
typedef TYPE_1__ js_Regexp ;


 int JS_REGEXP_G ;
 int JS_REGEXP_I ;
 int JS_REGEXP_M ;
 scalar_t__ js_isdefined (int *,int) ;
 scalar_t__ js_isregexp (int *,int) ;
 scalar_t__ js_isundefined (int *,int) ;
 int js_newregexp (int *,char const*,int) ;
 int js_syntaxerror (int *,char*,...) ;
 TYPE_1__* js_toregexp (int *,int) ;
 char* js_tostring (int *,int) ;
 int js_typeerror (int *,char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void jsB_new_RegExp(js_State *J)
{
 js_Regexp *old;
 const char *pattern;
 int flags;

 if (js_isregexp(J, 1)) {
  if (js_isdefined(J, 2))
   js_typeerror(J, "cannot supply flags when creating one RegExp from another");
  old = js_toregexp(J, 1);
  pattern = old->source;
  flags = old->flags;
 } else if (js_isundefined(J, 1)) {
  pattern = "(?:)";
  flags = 0;
 } else {
  pattern = js_tostring(J, 1);
  flags = 0;
 }

 if (strlen(pattern) == 0)
  pattern = "(?:)";

 if (js_isdefined(J, 2)) {
  const char *s = js_tostring(J, 2);
  int g = 0, i = 0, m = 0;
  while (*s) {
   if (*s == 'g') ++g;
   else if (*s == 'i') ++i;
   else if (*s == 'm') ++m;
   else js_syntaxerror(J, "invalid regular expression flag: '%c'", *s);
   ++s;
  }
  if (g > 1) js_syntaxerror(J, "invalid regular expression flag: 'g'");
  if (i > 1) js_syntaxerror(J, "invalid regular expression flag: 'i'");
  if (m > 1) js_syntaxerror(J, "invalid regular expression flag: 'm'");
  if (g) flags |= JS_REGEXP_G;
  if (i) flags |= JS_REGEXP_I;
  if (m) flags |= JS_REGEXP_M;
 }

 js_newregexp(J, pattern, flags);
}
