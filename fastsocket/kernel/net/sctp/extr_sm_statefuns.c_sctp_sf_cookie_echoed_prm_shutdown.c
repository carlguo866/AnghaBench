
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_endpoint {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int sctp_sf_cookie_wait_prm_shutdown (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;

sctp_disposition_t sctp_sf_cookie_echoed_prm_shutdown(
 const struct sctp_endpoint *ep,
 const struct sctp_association *asoc,
 const sctp_subtype_t type,
 void *arg, sctp_cmd_seq_t *commands)
{



 return sctp_sf_cookie_wait_prm_shutdown(ep, asoc, type, arg, commands);
}
