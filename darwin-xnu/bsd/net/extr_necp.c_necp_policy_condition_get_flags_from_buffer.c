
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;



__attribute__((used)) static inline u_int8_t
necp_policy_condition_get_flags_from_buffer(u_int8_t *buffer, u_int32_t length)
{
 return ((buffer && length >= (2 * sizeof(u_int8_t))) ? buffer[1] : 0);
}
