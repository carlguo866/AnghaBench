
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_chunkhdr {int dummy; } ;
struct sctp_chunk {int transport; scalar_t__ auth_chunk; struct sctp_chunkhdr* chunk_hdr; int sctp_hdr; int asoc; scalar_t__ skb; } ;
struct TYPE_3__ {int auth_capable; } ;
struct sctp_association {TYPE_1__ peer; } ;
struct TYPE_4__ {int auth_enable; } ;
struct net {TYPE_2__ sctp; } ;


 scalar_t__ SCTP_IERROR_NO_ERROR ;
 scalar_t__ sctp_sf_authenticate (struct sctp_association const*,struct sctp_chunk*) ;
 int skb_pull (scalar_t__,int) ;
 scalar_t__ skb_push (scalar_t__,int) ;

__attribute__((used)) static bool sctp_auth_chunk_verify(struct net *net, struct sctp_chunk *chunk,
       const struct sctp_association *asoc)
{
 struct sctp_chunk auth;

 if (!chunk->auth_chunk)
  return 1;
 if (!net->sctp.auth_enable || !asoc->peer.auth_capable)
  return 0;


 auth.skb = chunk->auth_chunk;
 auth.asoc = chunk->asoc;
 auth.sctp_hdr = chunk->sctp_hdr;
 auth.chunk_hdr = (struct sctp_chunkhdr *)
    skb_push(chunk->auth_chunk,
      sizeof(struct sctp_chunkhdr));
 skb_pull(chunk->auth_chunk, sizeof(struct sctp_chunkhdr));
 auth.transport = chunk->transport;

 return sctp_sf_authenticate(asoc, &auth) == SCTP_IERROR_NO_ERROR;
}
