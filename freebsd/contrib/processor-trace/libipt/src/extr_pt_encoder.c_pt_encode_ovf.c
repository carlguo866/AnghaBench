
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_packet {int type; } ;
struct pt_encoder {int dummy; } ;


 int ppt_ovf ;
 int pt_enc_next (struct pt_encoder*,struct pt_packet*) ;

int pt_encode_ovf(struct pt_encoder *encoder)
{
 struct pt_packet packet;

 packet.type = ppt_ovf;

 return pt_enc_next(encoder, &packet);
}
