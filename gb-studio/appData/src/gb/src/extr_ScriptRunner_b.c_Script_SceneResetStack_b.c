
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 scalar_t__ scene_stack_ptr ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 int script_ptr ;

void Script_SceneResetStack_b()
{
  scene_stack_ptr = 0;
  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
