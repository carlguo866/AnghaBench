
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct pppThroughput {int dummy; } ;
struct datalink {TYPE_3__* physical; } ;
struct cmdargs {int argc; int argn; int prompt; int * argv; TYPE_7__* bundle; struct datalink* cx; } ;
struct TYPE_12__ {struct pppThroughput throughput; } ;
struct TYPE_11__ {struct pppThroughput throughput; } ;
struct TYPE_13__ {TYPE_5__ ipv6cp; TYPE_4__ ipcp; } ;
struct TYPE_14__ {TYPE_6__ ncp; } ;
struct TYPE_8__ {struct pppThroughput total; } ;
struct TYPE_9__ {TYPE_1__ stats; } ;
struct TYPE_10__ {TYPE_2__ link; } ;


 int LogWARN ;
 int THROUGHPUT_ALL ;
 int THROUGHPUT_CURRENT ;
 int THROUGHPUT_OVERALL ;
 int THROUGHPUT_PEAK ;
 struct datalink* bundle2datalink (TYPE_7__*,int *) ;
 int log_Printf (int ,char*) ;
 scalar_t__ strcasecmp (int ,char*) ;
 int throughput_clear (struct pppThroughput*,int,int ) ;

__attribute__((used)) static int
ClearCommand(struct cmdargs const *arg)
{
  struct pppThroughput *t;
  struct datalink *cx;
  int i, clear_type;

  if (arg->argc < arg->argn + 1)
    return -1;

  if (strcasecmp(arg->argv[arg->argn], "physical") == 0) {
    cx = arg->cx;
    if (!cx)
      cx = bundle2datalink(arg->bundle, ((void*)0));
    if (!cx) {
      log_Printf(LogWARN, "A link must be specified for ``clear physical''\n");
      return 1;
    }
    t = &cx->physical->link.stats.total;
  } else if (strcasecmp(arg->argv[arg->argn], "ipcp") == 0)
    t = &arg->bundle->ncp.ipcp.throughput;

  else if (strcasecmp(arg->argv[arg->argn], "ipv6cp") == 0)
    t = &arg->bundle->ncp.ipv6cp.throughput;

  else
    return -1;

  if (arg->argc > arg->argn + 1) {
    clear_type = 0;
    for (i = arg->argn + 1; i < arg->argc; i++)
      if (strcasecmp(arg->argv[i], "overall") == 0)
        clear_type |= THROUGHPUT_OVERALL;
      else if (strcasecmp(arg->argv[i], "current") == 0)
        clear_type |= THROUGHPUT_CURRENT;
      else if (strcasecmp(arg->argv[i], "peak") == 0)
        clear_type |= THROUGHPUT_PEAK;
      else
        return -1;
  } else
    clear_type = THROUGHPUT_ALL;

  throughput_clear(t, clear_type, arg->prompt);
  return 0;
}
