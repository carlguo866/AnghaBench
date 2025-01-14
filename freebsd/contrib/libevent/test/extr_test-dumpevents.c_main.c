
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct timeval {int member_0; int member_1; scalar_t__ tv_usec; scalar_t__ tv_sec; } const timeval ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;
typedef int evutil_socket_t ;
typedef int WSADATA ;
typedef int WORD ;


 int EV_PERSIST ;
 int EV_READ ;
 int EV_TIMEOUT ;
 int EV_WRITE ;
 int MAKEWORD (int,int) ;
 int N_EVENTS ;
 scalar_t__ SIGINT ;
 int WSAStartup (int ,int *) ;
 int callback1 ;
 int callback2 ;
 int event_active (struct event*,int,int) ;
 int event_add (struct event*,struct timeval const*) ;
 int event_base_dump_events (struct event_base*,int ) ;
 int event_base_free (struct event_base*) ;
 struct timeval const* event_base_init_common_timeout (struct event_base*,struct timeval const*) ;
 struct event_base* event_base_new () ;
 int event_free (struct event*) ;
 struct event* event_new (struct event_base*,int,int,int ,int *) ;
 struct event* evsignal_new (struct event_base*,scalar_t__,int ,int *) ;
 struct event* evtimer_new (struct event_base*,int ,int *) ;
 int evutil_gettimeofday (struct timeval const*,int *) ;
 scalar_t__ evutil_make_internal_pipe_ (int*) ;
 int fprintf (int ,char*) ;
 int printf (char*,long,...) ;
 int puts (char*) ;
 int sock_perror (char*) ;
 int stderr ;
 int stdout ;

int
main(int argc, char **argv)
{

 int i;
 struct event *ev[13];
 evutil_socket_t pair1[2];
 evutil_socket_t pair2[2];
 struct timeval tv_onesec = {1,0};
 struct timeval tv_two5sec = {2,500*1000};
 const struct timeval *tv_onesec_common;
 const struct timeval *tv_two5sec_common;
 struct event_base *base;
 struct timeval now;
 if (evutil_make_internal_pipe_(pair1) < 0 ||
     evutil_make_internal_pipe_(pair2) < 0) {
  sock_perror("evutil_make_internal_pipe_");
  return 1;
 }

 if (!(base = event_base_new())) {
  fprintf(stderr,"Couldn't make event_base\n");
  return 2;
 }

 tv_onesec_common = event_base_init_common_timeout(base, &tv_onesec);
 tv_two5sec_common = event_base_init_common_timeout(base, &tv_two5sec);

 ev[0] = event_new(base, pair1[0], EV_WRITE, callback1, ((void*)0));
 ev[1] = event_new(base, pair1[1], EV_READ|EV_PERSIST, callback1, ((void*)0));
 ev[2] = event_new(base, pair2[0], EV_WRITE|EV_PERSIST, callback2, ((void*)0));
 ev[3] = event_new(base, pair2[1], EV_READ, callback2, ((void*)0));


 ev[4] = evtimer_new(base, callback1, ((void*)0));
 ev[5] = evtimer_new(base, callback1, ((void*)0));
 ev[6] = evtimer_new(base, callback1, ((void*)0));
 ev[7] = event_new(base, -1, EV_PERSIST, callback2, ((void*)0));
 ev[8] = event_new(base, -1, EV_PERSIST, callback2, ((void*)0));
 ev[9] = event_new(base, -1, EV_PERSIST, callback2, ((void*)0));


 ev[10] = event_new(base, -1, 0, callback1, ((void*)0));
 ev[11] = event_new(base, -1, 0, callback2, ((void*)0));


 ev[12] = evsignal_new(base, SIGINT, callback2, ((void*)0));

 event_add(ev[0], ((void*)0));
 event_add(ev[1], &tv_onesec);
 event_add(ev[2], tv_onesec_common);
 event_add(ev[3], tv_two5sec_common);

 event_add(ev[4], tv_onesec_common);
 event_add(ev[5], tv_onesec_common);
 event_add(ev[6], &tv_onesec);
 event_add(ev[7], tv_two5sec_common);
 event_add(ev[8], tv_onesec_common);
 event_add(ev[9], &tv_two5sec);

 event_active(ev[10], EV_READ, 1);
 event_active(ev[11], EV_READ|EV_WRITE|EV_TIMEOUT, 1);
 event_active(ev[1], EV_READ, 1);

 event_add(ev[12], ((void*)0));

 evutil_gettimeofday(&now,((void*)0));
 puts("=====expected");
 printf("Now= %ld.%06d\n",(long)now.tv_sec,(int)now.tv_usec);
 puts("Inserted:");
 printf("  %p [fd  %ld] Write\n",ev[0],(long)pair1[0]);
 printf("  %p [fd  %ld] Read Persist Timeout=T+1\n",ev[1],(long)pair1[1]);
 printf("  %p [fd  %ld] Write Persist Timeout=T+1\n",ev[2],(long)pair2[0]);
 printf("  %p [fd  %ld] Read Timeout=T+2.5\n",ev[3],(long)pair2[1]);
 printf("  %p [fd  -1] Timeout=T+1\n",ev[4]);
 printf("  %p [fd  -1] Timeout=T+1\n",ev[5]);
 printf("  %p [fd  -1] Timeout=T+1\n",ev[6]);
 printf("  %p [fd  -1] Persist Timeout=T+2.5\n",ev[7]);
 printf("  %p [fd  -1] Persist Timeout=T+1\n",ev[8]);
 printf("  %p [fd  -1] Persist Timeout=T+2.5\n",ev[9]);
 printf("  %p [sig %d] Signal Persist\n", ev[12], (int)SIGINT);

 puts("Active:");
 printf("  %p [fd  -1, priority=0] Read active\n", ev[10]);
 printf("  %p [fd  -1, priority=0] Read Write Timeout active\n", ev[11]);
 printf("  %p [fd  %ld, priority=0] Read active\n", ev[1], (long)pair1[1]);

 puts("======received");
 event_base_dump_events(base, stdout);

 for (i = 0; i < 13; ++i) {
  event_free(ev[i]);
 }
 event_base_free(base);

 return 0;
}
