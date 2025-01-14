
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int num_ports; int * ports; int client; } ;
struct ao {struct priv* priv; } ;
typedef int pname ;


 int JACK_DEFAULT_AUDIO_TYPE ;
 int JackPortIsOutput ;
 int MP_FATAL (struct ao*,char*) ;
 int jack_port_register (int ,char*,int ,int ,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
create_ports(struct ao *ao, int nports)
{
    struct priv *p = ao->priv;
    char pname[30];
    int i;

    for (i = 0; i < nports; i++) {
        snprintf(pname, sizeof(pname), "out_%d", i);
        p->ports[i] = jack_port_register(p->client, pname, JACK_DEFAULT_AUDIO_TYPE,
                                         JackPortIsOutput, 0);

        if (!p->ports[i]) {
            MP_FATAL(ao, "not enough ports available\n");
            goto err_port_register;
        }
    }

    p->num_ports = nports;
    return 0;

err_port_register:
    return -1;
}
