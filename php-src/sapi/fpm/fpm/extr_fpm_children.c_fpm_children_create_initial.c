
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpm_worker_pool_s {int socket_event_set; struct fpm_event_s* ondemand_event; int listening_socket; TYPE_1__* config; } ;
struct fpm_event_s {int dummy; } ;
struct TYPE_2__ {scalar_t__ pm; int name; } ;


 int FPM_EV_EDGE ;
 int FPM_EV_READ ;
 scalar_t__ PM_STYLE_ONDEMAND ;
 int ZLOG_ERROR ;
 int fpm_children_make (struct fpm_worker_pool_s*,int ,int ,int) ;
 int fpm_event_add (struct fpm_event_s*,int ) ;
 int fpm_event_set (struct fpm_event_s*,int ,int,int ,struct fpm_worker_pool_s*) ;
 int fpm_pctl_on_socket_accept ;
 scalar_t__ malloc (int) ;
 int memset (struct fpm_event_s*,int ,int) ;
 int zlog (int ,char*,int ) ;

int fpm_children_create_initial(struct fpm_worker_pool_s *wp)
{
 if (wp->config->pm == PM_STYLE_ONDEMAND) {
  wp->ondemand_event = (struct fpm_event_s *)malloc(sizeof(struct fpm_event_s));

  if (!wp->ondemand_event) {
   zlog(ZLOG_ERROR, "[pool %s] unable to malloc the ondemand socket event", wp->config->name);

   return 1;
  }

  memset(wp->ondemand_event, 0, sizeof(struct fpm_event_s));
  fpm_event_set(wp->ondemand_event, wp->listening_socket, FPM_EV_READ | FPM_EV_EDGE, fpm_pctl_on_socket_accept, wp);
  wp->socket_event_set = 1;
  fpm_event_add(wp->ondemand_event, 0);

  return 1;
 }
 return fpm_children_make(wp, 0 , 0, 1);
}
