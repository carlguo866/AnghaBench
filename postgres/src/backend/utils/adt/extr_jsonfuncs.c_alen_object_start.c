
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* lex; } ;
struct TYPE_3__ {scalar_t__ lex_level; } ;
typedef TYPE_2__ AlenState ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
alen_object_start(void *state)
{
 AlenState *_state = (AlenState *) state;


 if (_state->lex->lex_level == 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("cannot get array length of a non-array")));
}
