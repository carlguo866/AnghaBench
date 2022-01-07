
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int last_cwr_tsn; } ;
typedef int __u32 ;


 int SCTP_LOWER_CWND_ECNE ;
 scalar_t__ TSN_lt (int ,int ) ;
 struct sctp_transport* sctp_assoc_lookup_tsn (struct sctp_association*,int ) ;
 struct sctp_chunk* sctp_make_cwr (struct sctp_association*,int ,struct sctp_chunk*) ;
 int sctp_transport_lower_cwnd (struct sctp_transport*,int ) ;

__attribute__((used)) static struct sctp_chunk *sctp_do_ecn_ecne_work(struct sctp_association *asoc,
        __u32 lowest_tsn,
        struct sctp_chunk *chunk)
{
 struct sctp_chunk *repl;
 if (TSN_lt(asoc->last_cwr_tsn, lowest_tsn)) {
  struct sctp_transport *transport;




  transport = sctp_assoc_lookup_tsn(asoc, lowest_tsn);


  if (transport)
   sctp_transport_lower_cwnd(transport,
        SCTP_LOWER_CWND_ECNE);
  asoc->last_cwr_tsn = lowest_tsn;
 }




 repl = sctp_make_cwr(asoc, asoc->last_cwr_tsn, chunk);




 return repl;
}
