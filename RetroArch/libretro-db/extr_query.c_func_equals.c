
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int bool_; } ;
struct rmsgpack_dom_value {scalar_t__ type; TYPE_2__ val; } ;
struct TYPE_5__ {int int_; int uint_; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__ val; } ;
struct TYPE_7__ {TYPE_4__ value; } ;
struct argument {scalar_t__ type; TYPE_3__ a; } ;


 scalar_t__ AT_VALUE ;
 scalar_t__ RDT_BOOL ;
 scalar_t__ RDT_INT ;
 scalar_t__ RDT_UINT ;
 scalar_t__ rmsgpack_dom_value_cmp (struct rmsgpack_dom_value*,TYPE_4__*) ;

__attribute__((used)) static struct rmsgpack_dom_value func_equals(
      struct rmsgpack_dom_value input,
      unsigned argc, const struct argument * argv)
{
   struct argument arg;
   struct rmsgpack_dom_value res;

   res.type = RDT_BOOL;
   res.val.bool_ = 0;

   if (argc == 1)
   {
      arg = argv[0];

      if (arg.type != AT_VALUE)
         res.val.bool_ = 0;
      else
      {
         if (input.type == RDT_UINT && arg.a.value.type == RDT_INT)
         {
            arg.a.value.type = RDT_UINT;
            arg.a.value.val.uint_ = arg.a.value.val.int_;
         }
         res.val.bool_ = (rmsgpack_dom_value_cmp(&input, &arg.a.value) == 0);
      }
   }

   return res;
}
