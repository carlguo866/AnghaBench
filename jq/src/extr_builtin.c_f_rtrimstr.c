
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 scalar_t__ JV_KIND_TRUE ;
 int f_endswith (int *,int ,int ) ;
 int jv_copy (int ) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 scalar_t__ jv_string_length_bytes (int ) ;
 int jv_string_sized (int ,scalar_t__) ;
 int jv_string_value (int ) ;

__attribute__((used)) static jv f_rtrimstr(jq_state *jq, jv input, jv right) {
  if (jv_get_kind(f_endswith(jq, jv_copy(input), jv_copy(right))) == JV_KIND_TRUE) {
    jv res = jv_string_sized(jv_string_value(input),
                             jv_string_length_bytes(jv_copy(input)) - jv_string_length_bytes(right));
    jv_free(input);
    return res;
  }
  jv_free(right);
  return input;
}
