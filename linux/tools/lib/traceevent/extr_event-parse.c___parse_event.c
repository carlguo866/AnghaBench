
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tep_handle {int dummy; } ;
struct TYPE_2__ {scalar_t__ args; } ;
struct tep_event {TYPE_1__ print_fmt; } ;
typedef enum tep_errno { ____Placeholder_tep_errno } tep_errno ;


 scalar_t__ PRINT_ARGS ;
 int TEP_ERRNO__MEM_ALLOC_FAILED ;
 int __tep_parse_format (struct tep_event**,struct tep_handle*,char const*,unsigned long,char const*) ;
 scalar_t__ add_event (struct tep_handle*,struct tep_event*) ;
 int print_args (scalar_t__) ;
 int tep_free_event (struct tep_event*) ;

__attribute__((used)) static enum tep_errno
__parse_event(struct tep_handle *tep,
       struct tep_event **eventp,
       const char *buf, unsigned long size,
       const char *sys)
{
 int ret = __tep_parse_format(eventp, tep, buf, size, sys);
 struct tep_event *event = *eventp;

 if (event == ((void*)0))
  return ret;

 if (tep && add_event(tep, event)) {
  ret = TEP_ERRNO__MEM_ALLOC_FAILED;
  goto event_add_failed;
 }


 if (0 && event->print_fmt.args)
  print_args(event->print_fmt.args);

 return 0;

event_add_failed:
 tep_free_event(event);
 return ret;
}
