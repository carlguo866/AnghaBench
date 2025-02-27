
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_7__ {TYPE_2__* seat_config; } ;
struct TYPE_8__ {TYPE_3__ handler_context; } ;
struct TYPE_5__ {unsigned int size; int name; } ;
struct TYPE_6__ {TYPE_1__ xcursor_theme; } ;


 int CMD_FAILURE ;
 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 int EXPECTED_AT_MOST ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_4__* config ;
 int free (int ) ;
 int strdup (char const*) ;
 unsigned int strtoul (char*,char**,int) ;

struct cmd_results *seat_cmd_xcursor_theme(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "xcursor_theme", EXPECTED_AT_LEAST, 1)) ||
  (error = checkarg(argc, "xcursor_theme", EXPECTED_AT_MOST, 2))) {
  return error;
 }
 if (!config->handler_context.seat_config) {
  return cmd_results_new(CMD_FAILURE, "No seat defined");
 }

 const char *theme_name = argv[0];
 unsigned size = 24;

 if (argc == 2) {
  char *end;
  size = strtoul(argv[1], &end, 10);
  if (*end) {
   return cmd_results_new(
    CMD_INVALID, "Expected a positive integer size");
  }
 }

 free(config->handler_context.seat_config->xcursor_theme.name);
 config->handler_context.seat_config->xcursor_theme.name = strdup(theme_name);
 config->handler_context.seat_config->xcursor_theme.size = size;

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
