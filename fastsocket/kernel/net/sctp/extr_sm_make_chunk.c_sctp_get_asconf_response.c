
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sctp_chunk {TYPE_2__* skb; TYPE_1__* chunk_hdr; } ;
struct TYPE_10__ {int cause; } ;
typedef TYPE_4__ sctp_errhdr_t ;
typedef int sctp_chunkhdr_t ;
typedef int sctp_addiphdr_t ;
struct TYPE_9__ {int type; int length; } ;
struct TYPE_11__ {scalar_t__ crr_id; TYPE_3__ param_hdr; } ;
typedef TYPE_5__ sctp_addip_param_t ;
typedef int __be16 ;
struct TYPE_8__ {scalar_t__ data; } ;
struct TYPE_7__ {int length; } ;


 int SCTP_ERROR_INV_PARAM ;
 int SCTP_ERROR_NO_ERROR ;
 int SCTP_ERROR_REQ_REFUSED ;


 int ntohs (int ) ;

__attribute__((used)) static __be16 sctp_get_asconf_response(struct sctp_chunk *asconf_ack,
          sctp_addip_param_t *asconf_param,
          int no_err)
{
 sctp_addip_param_t *asconf_ack_param;
 sctp_errhdr_t *err_param;
 int length;
 int asconf_ack_len;
 __be16 err_code;

 if (no_err)
  err_code = SCTP_ERROR_NO_ERROR;
 else
  err_code = SCTP_ERROR_REQ_REFUSED;

 asconf_ack_len = ntohs(asconf_ack->chunk_hdr->length) -
        sizeof(sctp_chunkhdr_t);




 length = sizeof(sctp_addiphdr_t);
 asconf_ack_param = (sctp_addip_param_t *)(asconf_ack->skb->data +
        length);
 asconf_ack_len -= length;

 while (asconf_ack_len > 0) {
  if (asconf_ack_param->crr_id == asconf_param->crr_id) {
   switch(asconf_ack_param->param_hdr.type) {
   case 128:
    return SCTP_ERROR_NO_ERROR;
   case 129:
    length = sizeof(sctp_addip_param_t);
    err_param = (sctp_errhdr_t *)
        ((void *)asconf_ack_param + length);
    asconf_ack_len -= length;
    if (asconf_ack_len > 0)
     return err_param->cause;
    else
     return SCTP_ERROR_INV_PARAM;
    break;
   default:
    return SCTP_ERROR_INV_PARAM;
   }
  }

  length = ntohs(asconf_ack_param->param_hdr.length);
  asconf_ack_param = (sctp_addip_param_t *)
     ((void *)asconf_ack_param + length);
  asconf_ack_len -= length;
 }

 return err_code;
}
