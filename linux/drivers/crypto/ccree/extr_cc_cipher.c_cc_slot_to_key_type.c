
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef enum cc_key_type { ____Placeholder_cc_key_type } cc_key_type ;


 scalar_t__ CC_FIRST_CPP_KEY_SLOT ;
 scalar_t__ CC_FIRST_HW_KEY_SLOT ;
 int CC_HW_PROTECTED_KEY ;
 int CC_INVALID_PROTECTED_KEY ;
 scalar_t__ CC_LAST_CPP_KEY_SLOT ;
 scalar_t__ CC_LAST_HW_KEY_SLOT ;
 int CC_POLICY_PROTECTED_KEY ;

__attribute__((used)) static inline enum cc_key_type cc_slot_to_key_type(u8 slot_num)
{
 if (slot_num >= CC_FIRST_HW_KEY_SLOT && slot_num <= CC_LAST_HW_KEY_SLOT)
  return CC_HW_PROTECTED_KEY;
 else if (slot_num >= CC_FIRST_CPP_KEY_SLOT &&
   slot_num <= CC_LAST_CPP_KEY_SLOT)
  return CC_POLICY_PROTECTED_KEY;
 else
  return CC_INVALID_PROTECTED_KEY;
}
