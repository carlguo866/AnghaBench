
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PHP_DISPLAY_ERRORS_STDERR ;
 int PHP_DISPLAY_ERRORS_STDOUT ;
 int ZEND_ATOL (int,char*) ;
 int strcasecmp (char*,char*) ;

__attribute__((used)) static int php_get_display_errors_mode(char *value, size_t value_length)
{
 int mode;

 if (!value) {
  return PHP_DISPLAY_ERRORS_STDOUT;
 }

 if (value_length == 2 && !strcasecmp("on", value)) {
  mode = PHP_DISPLAY_ERRORS_STDOUT;
 } else if (value_length == 3 && !strcasecmp("yes", value)) {
  mode = PHP_DISPLAY_ERRORS_STDOUT;
 } else if (value_length == 4 && !strcasecmp("true", value)) {
  mode = PHP_DISPLAY_ERRORS_STDOUT;
 } else if (value_length == 6 && !strcasecmp(value, "stderr")) {
  mode = PHP_DISPLAY_ERRORS_STDERR;
 } else if (value_length == 6 && !strcasecmp(value, "stdout")) {
  mode = PHP_DISPLAY_ERRORS_STDOUT;
 } else {
  ZEND_ATOL(mode, value);
  if (mode && mode != PHP_DISPLAY_ERRORS_STDOUT && mode != PHP_DISPLAY_ERRORS_STDERR) {
   mode = PHP_DISPLAY_ERRORS_STDOUT;
  }
 }

 return mode;
}
