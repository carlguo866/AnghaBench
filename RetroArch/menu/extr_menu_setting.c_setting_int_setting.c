
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int triggered; int idx; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {int integer; } ;
struct TYPE_8__ {int* integer; } ;
struct TYPE_9__ {TYPE_1__ target; } ;
struct TYPE_13__ {int size; char const* name; char const* short_description; char const* group; char const* subgroup; char const* parent_group; double min; double max; float step; int enforce_minrange; int enforce_maxrange; int dont_use_enum_idx_representation; TYPE_5__ cmd_trigger; TYPE_4__ default_value; TYPE_3__ original_value; TYPE_2__ value; int * rounding_fraction; int browser_selection_type; scalar_t__ bind_type; int * get_string_representation; void* action_select; void* action_ok; int * action_cancel; int * action_down; int * action_up; int action_right; int action_left; int action_start; void* read_handler; void* change_handler; scalar_t__ free_flags; scalar_t__ flags; scalar_t__ offset_by; scalar_t__ index_offset; scalar_t__ index; int * values; int type; int enum_idx; } ;
typedef TYPE_6__ rarch_setting_t ;
typedef void* change_handler_t ;


 int CMD_EVENT_NONE ;
 int MSG_UNKNOWN ;
 int ST_INT ;
 int ST_NONE ;
 void* setting_generic_action_ok_default ;
 int setting_generic_action_start_default ;
 int setting_get_string_representation_int ;
 int setting_int_action_left_default ;
 int setting_int_action_right_default ;

__attribute__((used)) static rarch_setting_t setting_int_setting(const char* name,
      const char* short_description, int* target,
      int default_value,
      const char *group, const char *subgroup, const char *parent_group,
      change_handler_t change_handler, change_handler_t read_handler,
      bool dont_use_enum_idx)
{
   rarch_setting_t result;

   result.enum_idx = MSG_UNKNOWN;
   result.type = ST_INT;

   result.size = sizeof(int);

   result.name = name;
   result.short_description = short_description;
   result.group = group;
   result.subgroup = subgroup;
   result.parent_group = parent_group;
   result.values = ((void*)0);

   result.index = 0;
   result.index_offset = 0;
   result.offset_by = 0;

   result.min = 0.0;
   result.max = 0.0;

   result.flags = 0;
   result.free_flags = 0;

   result.change_handler = change_handler;
   result.read_handler = read_handler;
   result.action_start = setting_generic_action_start_default;
   result.action_left = setting_int_action_left_default;
   result.action_right = setting_int_action_right_default;
   result.action_up = ((void*)0);
   result.action_down = ((void*)0);
   result.action_cancel = ((void*)0);
   result.action_ok = setting_generic_action_ok_default;
   result.action_select = setting_generic_action_ok_default;
   result.get_string_representation = &setting_get_string_representation_int;

   result.bind_type = 0;
   result.browser_selection_type = ST_NONE;
   result.step = 0.0f;
   result.rounding_fraction = ((void*)0);
   result.enforce_minrange = 0;
   result.enforce_maxrange = 0;

   result.value.target.integer = target;
   result.original_value.integer = *target;
   result.default_value.integer = default_value;

   result.cmd_trigger.idx = CMD_EVENT_NONE;
   result.cmd_trigger.triggered = 0;

   result.dont_use_enum_idx_representation = dont_use_enum_idx;

   return result;
}
