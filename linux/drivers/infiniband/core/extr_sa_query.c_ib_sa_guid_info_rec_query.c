
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ib_sa_query {struct ib_sa_client* client; int release; int * callback; TYPE_1__* mad_buf; struct ib_sa_port* port; } ;
struct ib_sa_port {struct ib_mad_agent* agent; } ;
struct TYPE_6__ {int comp_mask; } ;
struct TYPE_5__ {int attr_id; scalar_t__ method; } ;
struct ib_sa_mad {int data; TYPE_3__ sa_hdr; TYPE_2__ mad_hdr; } ;
struct ib_sa_guidinfo_rec {int dummy; } ;
struct ib_sa_guidinfo_query {void (* callback ) (int,struct ib_sa_guidinfo_rec*,void*) ;struct ib_sa_query sa_query; void* context; } ;
struct ib_sa_device {scalar_t__ start_port; struct ib_sa_port* port; } ;
struct ib_sa_client {int dummy; } ;
struct ib_mad_agent {int dummy; } ;
struct ib_device {int dummy; } ;
typedef int ib_sa_comp_mask ;
typedef int gfp_t ;
struct TYPE_4__ {struct ib_sa_mad* mad; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ IB_MGMT_METHOD_GET ;
 scalar_t__ IB_MGMT_METHOD_SET ;
 int IB_SA_ATTR_GUID_INFO_REC ;
 scalar_t__ IB_SA_METHOD_DELETE ;
 int alloc_mad (struct ib_sa_query*,int ) ;
 int cpu_to_be16 (int ) ;
 int free_mad (struct ib_sa_query*) ;
 int guidinfo_rec_table ;
 struct ib_sa_device* ib_get_client_data (struct ib_device*,int *) ;
 int ib_pack (int ,int ,struct ib_sa_guidinfo_rec*,int ) ;
 int ib_sa_client_get (struct ib_sa_client*) ;
 int ib_sa_client_put (struct ib_sa_client*) ;
 int * ib_sa_guidinfo_rec_callback ;
 int ib_sa_guidinfo_rec_release ;
 int init_mad (struct ib_sa_query*,struct ib_mad_agent*) ;
 int kfree (struct ib_sa_guidinfo_query*) ;
 struct ib_sa_guidinfo_query* kzalloc (int,int ) ;
 int sa_client ;
 int send_mad (struct ib_sa_query*,unsigned long,int ) ;

int ib_sa_guid_info_rec_query(struct ib_sa_client *client,
         struct ib_device *device, u8 port_num,
         struct ib_sa_guidinfo_rec *rec,
         ib_sa_comp_mask comp_mask, u8 method,
         unsigned long timeout_ms, gfp_t gfp_mask,
         void (*callback)(int status,
            struct ib_sa_guidinfo_rec *resp,
            void *context),
         void *context,
         struct ib_sa_query **sa_query)
{
 struct ib_sa_guidinfo_query *query;
 struct ib_sa_device *sa_dev = ib_get_client_data(device, &sa_client);
 struct ib_sa_port *port;
 struct ib_mad_agent *agent;
 struct ib_sa_mad *mad;
 int ret;

 if (!sa_dev)
  return -ENODEV;

 if (method != IB_MGMT_METHOD_GET &&
     method != IB_MGMT_METHOD_SET &&
     method != IB_SA_METHOD_DELETE) {
  return -EINVAL;
 }

 port = &sa_dev->port[port_num - sa_dev->start_port];
 agent = port->agent;

 query = kzalloc(sizeof(*query), gfp_mask);
 if (!query)
  return -ENOMEM;

 query->sa_query.port = port;
 ret = alloc_mad(&query->sa_query, gfp_mask);
 if (ret)
  goto err1;

 ib_sa_client_get(client);
 query->sa_query.client = client;
 query->callback = callback;
 query->context = context;

 mad = query->sa_query.mad_buf->mad;
 init_mad(&query->sa_query, agent);

 query->sa_query.callback = callback ? ib_sa_guidinfo_rec_callback : ((void*)0);
 query->sa_query.release = ib_sa_guidinfo_rec_release;

 mad->mad_hdr.method = method;
 mad->mad_hdr.attr_id = cpu_to_be16(IB_SA_ATTR_GUID_INFO_REC);
 mad->sa_hdr.comp_mask = comp_mask;

 ib_pack(guidinfo_rec_table, ARRAY_SIZE(guidinfo_rec_table), rec,
  mad->data);

 *sa_query = &query->sa_query;

 ret = send_mad(&query->sa_query, timeout_ms, gfp_mask);
 if (ret < 0)
  goto err2;

 return ret;

err2:
 *sa_query = ((void*)0);
 ib_sa_client_put(query->sa_query.client);
 free_mad(&query->sa_query);

err1:
 kfree(query);
 return ret;
}
