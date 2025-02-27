
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_paramhdr {int dummy; } ;
struct sctp_errhdr {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int error ;


 int SCTP_ERROR_PROTO_VIOLATION ;
 int sctp_addto_chunk (struct sctp_chunk*,int,char const*) ;
 int sctp_addto_param (struct sctp_chunk*,int,struct sctp_paramhdr*) ;
 int sctp_init_cause (struct sctp_chunk*,int ,int) ;
 struct sctp_chunk* sctp_make_abort (struct sctp_association const*,struct sctp_chunk const*,size_t) ;

struct sctp_chunk *sctp_make_violation_paramlen(
     const struct sctp_association *asoc,
     const struct sctp_chunk *chunk,
     struct sctp_paramhdr *param)
{
 static const char error[] = "The following parameter had invalid length:";
 size_t payload_len = sizeof(error) + sizeof(struct sctp_errhdr) +
        sizeof(*param);
 struct sctp_chunk *retval;

 retval = sctp_make_abort(asoc, chunk, payload_len);
 if (!retval)
  goto nodata;

 sctp_init_cause(retval, SCTP_ERROR_PROTO_VIOLATION,
   sizeof(error) + sizeof(*param));
 sctp_addto_chunk(retval, sizeof(error), error);
 sctp_addto_param(retval, sizeof(*param), param);

nodata:
 return retval;
}
