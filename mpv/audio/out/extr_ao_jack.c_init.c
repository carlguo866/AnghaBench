
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct priv {int client; int num_ports; TYPE_1__* opts; } ;
struct mp_chmap_sel {int member_0; } ;
struct TYPE_5__ {int num; } ;
struct ao {TYPE_2__ channels; int samplerate; int format; int global; struct priv* priv; } ;
typedef int jack_options_t ;
struct TYPE_4__ {int stdlayout; int client_name; int autostart; } ;


 int AF_FORMAT_FLOATP ;
 int JackNoStartServer ;
 int JackNullOption ;
 int MP_FATAL (struct ao*,char*) ;
 int ao_chmap_sel_adjust (struct ao*,struct mp_chmap_sel*,TYPE_2__*) ;
 int ao_chmap_sel_get_def (struct ao*,struct mp_chmap_sel*,TYPE_2__*,int ) ;
 int ao_jack_conf ;
 int buffer_size_cb ;
 scalar_t__ create_ports (struct ao*,int ) ;
 int graph_order_cb ;
 int jack_client_close (int ) ;
 int jack_client_open (int ,int ,int *) ;
 int jack_get_sample_rate (int ) ;
 int jack_set_buffer_size_callback (int ,int ,struct ao*) ;
 int jack_set_graph_order_callback (int ,int ,struct ao*) ;
 int jack_set_process_callback (int ,int ,struct ao*) ;
 int mp_chmap_sel_add_any (struct mp_chmap_sel*) ;
 int mp_chmap_sel_add_waveext (struct mp_chmap_sel*) ;
 TYPE_1__* mp_get_config_group (struct ao*,int ,int *) ;
 int process ;

__attribute__((used)) static int init(struct ao *ao)
{
    struct priv *p = ao->priv;
    struct mp_chmap_sel sel = {0};
    jack_options_t open_options;

    p->opts = mp_get_config_group(ao, ao->global, &ao_jack_conf);

    ao->format = AF_FORMAT_FLOATP;

    switch (p->opts->stdlayout) {
    case 0:
        mp_chmap_sel_add_waveext(&sel);
        break;

    default:
        mp_chmap_sel_add_any(&sel);
    }

    if (!ao_chmap_sel_adjust(ao, &sel, &ao->channels))
        goto err_chmap;

    open_options = JackNullOption;
    if (!p->opts->autostart)
        open_options |= JackNoStartServer;

    p->client = jack_client_open(p->opts->client_name, open_options, ((void*)0));
    if (!p->client) {
        MP_FATAL(ao, "cannot open server\n");
        goto err_client_open;
    }

    if (create_ports(ao, ao->channels.num))
        goto err_create_ports;

    jack_set_process_callback(p->client, process, ao);

    ao->samplerate = jack_get_sample_rate(p->client);

    jack_set_buffer_size_callback(p->client, buffer_size_cb, ao);
    jack_set_graph_order_callback(p->client, graph_order_cb, ao);

    if (!ao_chmap_sel_get_def(ao, &sel, &ao->channels, p->num_ports))
        goto err_chmap_sel_get_def;

    return 0;

err_chmap_sel_get_def:
err_create_ports:
    jack_client_close(p->client);
err_client_open:
err_chmap:
    return -1;
}
