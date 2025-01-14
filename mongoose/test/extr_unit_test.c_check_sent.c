
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct simple_data {char* to_send; int fail; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct mg_connection {TYPE_1__ send_mbuf; } ;


 int sprintf (char*,char*,int,int) ;
 int strcat (int ,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void check_sent(struct simple_data *d, struct mg_connection *nc,
                       void *ev_data) {
  if (*((int *) ev_data) != (int) strlen(d->to_send)) {
    char msg[100];
    sprintf(msg, "(num sent wrong: %d vs %d)", *((int *) ev_data),
            (int) strlen(d->to_send));
    strcat(d->fail, msg);
  } else {
    d->to_send[0] = '\0';
  }
  if (nc->send_mbuf.len != 0) strcat(d->fail, "(send buf not empty)");
}
