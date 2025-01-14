
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_param {int name; } ;


 scalar_t__ IS_PSTATE_RESPONSE_GOT (struct iscsi_param*) ;
 scalar_t__ IS_TYPE_VALUE_LIST (struct iscsi_param*) ;
 char* iscsi_check_valuelist_for_support (struct iscsi_param*,char*) ;
 scalar_t__ iscsi_update_param_value (struct iscsi_param*,char*) ;
 int pr_err (char*,int ) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int iscsi_check_proposer_state(struct iscsi_param *param, char *value)
{
 if (IS_PSTATE_RESPONSE_GOT(param)) {
  pr_err("Received key \"%s\" twice, protocol error.\n",
    param->name);
  return -1;
 }

 if (IS_TYPE_VALUE_LIST(param)) {
  char *comma_ptr = ((void*)0), *tmp_ptr = ((void*)0);

  comma_ptr = strchr(value, ',');
  if (comma_ptr) {
   pr_err("Illegal \",\" in response for \"%s\".\n",
     param->name);
   return -1;
  }

  tmp_ptr = iscsi_check_valuelist_for_support(param, value);
  if (!tmp_ptr)
   return -1;
 }

 if (iscsi_update_param_value(param, value) < 0)
  return -1;

 return 0;
}
