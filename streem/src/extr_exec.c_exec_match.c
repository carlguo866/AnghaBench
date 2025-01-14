
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strm_lambda {TYPE_1__* body; } ;
typedef int strm_value ;
typedef int strm_stream ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ NODE_LAMBDA ;
 int STRM_NG ;
 int strm_funcall (int *,int ,int,int *,int *) ;
 scalar_t__ strm_lambda_p (int ) ;
 int strm_raise (int *,char*) ;
 struct strm_lambda* strm_value_lambda (int ) ;

__attribute__((used)) static int
exec_match(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value func;

  if (argc < 2) {
      strm_raise(strm, "wrong number of arguments");
      return STRM_NG;
  }
  func = args[argc-1];
  if (strm_lambda_p(func)) {
    struct strm_lambda* lambda = strm_value_lambda(func);
    if (lambda->body->type == NODE_LAMBDA) {
      strm_raise(strm, "not a case function");
      return STRM_NG;
    }
  }
  return strm_funcall(strm, func, argc-1, args, ret);
}
