
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int boolean_t ;


 scalar_t__ SM_DEBUG_PREFIX ;
 scalar_t__ SM_PREFIX_DECODE (int ) ;

boolean_t
sm_entry_is_debug(uint64_t e)
{
 return (SM_PREFIX_DECODE(e) == SM_DEBUG_PREFIX);
}
