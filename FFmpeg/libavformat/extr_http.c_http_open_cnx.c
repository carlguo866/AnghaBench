
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* priv_data; } ;
typedef TYPE_2__ URLContext ;
struct TYPE_10__ {scalar_t__ auth_type; scalar_t__ stale; } ;
struct TYPE_7__ {scalar_t__ auth_type; scalar_t__ stale; } ;
struct TYPE_9__ {int http_code; scalar_t__ hd; TYPE_4__ auth_state; TYPE_1__ proxy_auth_state; int chained_options; } ;
typedef TYPE_3__ HTTPContext ;
typedef scalar_t__ HTTPAuthType ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int EIO ;
 scalar_t__ HTTP_AUTH_NONE ;
 int MAX_REDIRECTS ;
 int av_dict_copy (int **,int ,int ) ;
 int ff_http_averror (int,int) ;
 int ffurl_closep (scalar_t__*) ;
 int http_open_cnx_internal (TYPE_2__*,int **) ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static int http_open_cnx(URLContext *h, AVDictionary **options)
{
    HTTPAuthType cur_auth_type, cur_proxy_auth_type;
    HTTPContext *s = h->priv_data;
    int location_changed, attempts = 0, redirects = 0;
redo:
    av_dict_copy(options, s->chained_options, 0);

    cur_auth_type = s->auth_state.auth_type;
    cur_proxy_auth_type = s->auth_state.auth_type;

    location_changed = http_open_cnx_internal(h, options);
    if (location_changed < 0)
        goto fail;

    attempts++;
    if (s->http_code == 401) {
        if ((cur_auth_type == HTTP_AUTH_NONE || s->auth_state.stale) &&
            s->auth_state.auth_type != HTTP_AUTH_NONE && attempts < 4) {
            ffurl_closep(&s->hd);
            goto redo;
        } else
            goto fail;
    }
    if (s->http_code == 407) {
        if ((cur_proxy_auth_type == HTTP_AUTH_NONE || s->proxy_auth_state.stale) &&
            s->proxy_auth_state.auth_type != HTTP_AUTH_NONE && attempts < 4) {
            ffurl_closep(&s->hd);
            goto redo;
        } else
            goto fail;
    }
    if ((s->http_code == 301 || s->http_code == 302 ||
         s->http_code == 303 || s->http_code == 307) &&
        location_changed == 1) {

        ffurl_closep(&s->hd);
        if (redirects++ >= MAX_REDIRECTS)
            return AVERROR(EIO);


        memset(&s->auth_state, 0, sizeof(s->auth_state));
        attempts = 0;
        location_changed = 0;
        goto redo;
    }
    return 0;

fail:
    if (s->hd)
        ffurl_closep(&s->hd);
    if (location_changed < 0)
        return location_changed;
    return ff_http_averror(s->http_code, AVERROR(EIO));
}
