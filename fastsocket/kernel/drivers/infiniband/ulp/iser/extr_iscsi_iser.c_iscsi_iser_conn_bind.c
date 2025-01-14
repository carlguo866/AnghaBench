
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct iser_conn {struct iscsi_iser_conn* iser_conn; } ;
struct iscsi_iser_conn {struct iser_conn* ib_conn; } ;
struct iscsi_endpoint {struct iser_conn* dd_data; } ;
struct iscsi_conn {struct iscsi_iser_conn* dd_data; } ;
struct iscsi_cls_session {int dummy; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;


 int EINVAL ;
 int ENOMEM ;
 int iscsi_conn_bind (struct iscsi_cls_session*,struct iscsi_cls_conn*,int) ;
 struct iscsi_endpoint* iscsi_lookup_endpoint (scalar_t__) ;
 scalar_t__ iser_alloc_rx_descriptors (struct iser_conn*) ;
 int iser_conn_get (struct iser_conn*) ;
 int iser_err (char*,unsigned long long) ;
 int iser_info (char*,struct iscsi_conn*,struct iscsi_iser_conn*,struct iser_conn*) ;

__attribute__((used)) static int
iscsi_iser_conn_bind(struct iscsi_cls_session *cls_session,
       struct iscsi_cls_conn *cls_conn, uint64_t transport_eph,
       int is_leading)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct iscsi_iser_conn *iser_conn;
 struct iser_conn *ib_conn;
 struct iscsi_endpoint *ep;
 int error;

 error = iscsi_conn_bind(cls_session, cls_conn, is_leading);
 if (error)
  return error;



 ep = iscsi_lookup_endpoint(transport_eph);
 if (!ep) {
  iser_err("can't bind eph %llx\n",
    (unsigned long long)transport_eph);
  return -EINVAL;
 }
 ib_conn = ep->dd_data;

 if (iser_alloc_rx_descriptors(ib_conn))
  return -ENOMEM;




 iser_info("binding iscsi/iser conn %p %p to ib_conn %p\n",
    conn, conn->dd_data, ib_conn);
 iser_conn = conn->dd_data;
 ib_conn->iser_conn = iser_conn;
 iser_conn->ib_conn = ib_conn;
 iser_conn_get(ib_conn);
 return 0;
}
