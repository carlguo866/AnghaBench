
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block ;


 int CLOSURE_PARAM_REGULAR ;
 int gen_op_unbound (int ,char const*) ;

block gen_param_regular(const char* name) {
  return gen_op_unbound(CLOSURE_PARAM_REGULAR, name);
}
