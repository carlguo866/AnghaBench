
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 int SCTP_INC_STATS (struct net*,int ) ;
 int SCTP_MIB_OUTOFBLUES ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 int sctp_sf_shut_8_4_5 (struct net*,struct sctp_endpoint const*,int *,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_violation_chunklen (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;

enum sctp_disposition sctp_sf_do_8_5_1_E_sa(struct net *net,
         const struct sctp_endpoint *ep,
         const struct sctp_association *asoc,
         const union sctp_subtype type,
         void *arg,
         struct sctp_cmd_seq *commands)
{
 struct sctp_chunk *chunk = arg;


 if (!sctp_chunk_length_valid(chunk, sizeof(struct sctp_chunkhdr)))
  return sctp_sf_violation_chunklen(net, ep, asoc, type, arg,
        commands);






 SCTP_INC_STATS(net, SCTP_MIB_OUTOFBLUES);

 return sctp_sf_shut_8_4_5(net, ep, ((void*)0), type, arg, commands);
}
