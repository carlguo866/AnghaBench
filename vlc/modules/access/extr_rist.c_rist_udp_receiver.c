
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ i_port; int psz_host; } ;
typedef TYPE_1__ vlc_url_t ;
struct rist_flow {int fd_in; int fd_rtcp_m; int fd_nack; struct rist_flow* buffer; int cname; } ;
struct TYPE_11__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_12__ {struct rist_flow* flow; } ;
typedef TYPE_3__ stream_sys_t ;


 int IPPROTO_UDP ;
 int free (struct rist_flow*) ;
 int msg_Err (TYPE_2__*,char*) ;
 int msg_Info (TYPE_2__*,char*,int ,...) ;
 int net_ConnectDgram (TYPE_2__*,int ,scalar_t__,int,int ) ;
 void* net_OpenDgram (TYPE_2__*,int ,scalar_t__,int *,int ,int ) ;
 int populate_cname (int,int ) ;
 struct rist_flow* rist_init_rx () ;
 int vlc_close (int) ;

__attribute__((used)) static struct rist_flow *rist_udp_receiver(stream_t *p_access, vlc_url_t *parsed_url, bool b_ismulticast)
{
    stream_sys_t *p_sys = p_access->p_sys;
    msg_Info( p_access, "Opening Rist Flow Receiver at %s:%d and %s:%d",
             parsed_url->psz_host, parsed_url->i_port,
             parsed_url->psz_host, parsed_url->i_port+1);

    p_sys->flow = rist_init_rx();
    if (!p_sys->flow)
        return ((void*)0);

    p_sys->flow->fd_in = net_OpenDgram(p_access, parsed_url->psz_host, parsed_url->i_port, ((void*)0),
                0, IPPROTO_UDP);
    if (p_sys->flow->fd_in < 0)
    {
        msg_Err( p_access, "cannot open input socket" );
        goto fail;
    }

    if (b_ismulticast)
    {
        p_sys->flow->fd_rtcp_m = net_OpenDgram(p_access, parsed_url->psz_host, parsed_url->i_port + 1,
            ((void*)0), 0, IPPROTO_UDP);
        if (p_sys->flow->fd_rtcp_m < 0)
        {
            msg_Err( p_access, "cannot open multicast nack socket" );
            goto fail;
        }
        p_sys->flow->fd_nack = net_ConnectDgram(p_access, parsed_url->psz_host,
            parsed_url->i_port + 1, -1, IPPROTO_UDP );
    }
    else
    {
        p_sys->flow->fd_nack = net_OpenDgram(p_access, parsed_url->psz_host, parsed_url->i_port + 1,
            ((void*)0), 0, IPPROTO_UDP);
    }
    if (p_sys->flow->fd_nack < 0)
    {
        msg_Err( p_access, "cannot open nack socket" );
        goto fail;
    }

    populate_cname(p_sys->flow->fd_nack, p_sys->flow->cname);
    msg_Info(p_access, "our cname is %s", p_sys->flow->cname);

    return p_sys->flow;

fail:
    if (p_sys->flow->fd_in != -1)
        vlc_close(p_sys->flow->fd_in);
    if (p_sys->flow->fd_nack != -1)
        vlc_close(p_sys->flow->fd_nack);
    if (p_sys->flow->fd_rtcp_m != -1)
        vlc_close(p_sys->flow->fd_rtcp_m);
    free(p_sys->flow->buffer);
    free(p_sys->flow);
    return ((void*)0);
}
