
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int is_url_changed; int * url; scalar_t__ is_handled; } ;
struct TYPE_10__ {TYPE_4__ app_io_ctrl; scalar_t__ app_ctx; } ;
struct TYPE_9__ {TYPE_1__* prot; TYPE_3__* priv_data; } ;
struct TYPE_8__ {int name; } ;
typedef TYPE_2__ IjkURLContext ;
typedef TYPE_3__ Context ;
typedef TYPE_4__ AVAppIOControl ;


 int AVAPP_CTRL_WILL_HTTP_OPEN ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int IJKAVERROR_EXIT ;
 int av_application_on_io_control (scalar_t__,int ,TYPE_4__*) ;
 int av_log (int *,int ,char*,int ,int *,char*) ;
 scalar_t__ ijkio_cache_check_interrupt (TYPE_2__*) ;
 int snprintf (int *,int,char*,char*,int *) ;
 scalar_t__ strcmp (int *,int *) ;
 int strlen (char*) ;
 scalar_t__ strncmp (int *,char*,int ) ;

__attribute__((used)) static int ijkio_urlhook_call_inject(IjkURLContext *h)
{
    Context *c = h->priv_data;
    int ret = 0;

    if (ijkio_cache_check_interrupt(h)) {
        ret = IJKAVERROR_EXIT;
        goto fail;
    }

    if (c->app_ctx) {
        AVAppIOControl control_data_backup = c->app_io_ctrl;

        c->app_io_ctrl.is_handled = 0;
        c->app_io_ctrl.is_url_changed = 0;
        ret = av_application_on_io_control(c->app_ctx, AVAPP_CTRL_WILL_HTTP_OPEN, &c->app_io_ctrl);
        if (ret || !c->app_io_ctrl.url[0]) {
            ret = IJKAVERROR_EXIT;
            goto fail;
        }

        AVAppIOControl user_control_data = c->app_io_ctrl;
        if (strncmp(c->app_io_ctrl.url, "ffio:", strlen("ffio:"))) {
            snprintf(c->app_io_ctrl.url, sizeof(c->app_io_ctrl.url), "%s%s", "ffio:", user_control_data.url);
        }

        if (!c->app_io_ctrl.is_url_changed && strcmp(control_data_backup.url, c->app_io_ctrl.url)) {

            c->app_io_ctrl.is_url_changed = 1;
        }

        av_log(((void*)0), AV_LOG_INFO, "%s %s (%s)\n", h->prot->name, c->app_io_ctrl.url, c->app_io_ctrl.is_url_changed ? "changed" : "remain");
    }

    if (ijkio_cache_check_interrupt(h)) {
        ret = IJKAVERROR_EXIT;
        av_log(((void*)0), AV_LOG_ERROR, "%s %s (%s)\n", h->prot->name, c->app_io_ctrl.url, c->app_io_ctrl.is_url_changed ? "changed" : "remain");
        goto fail;
    }

fail:
    return ret;
}
