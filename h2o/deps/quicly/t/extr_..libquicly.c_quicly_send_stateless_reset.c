
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_13__ {int* base; int len; } ;
struct TYPE_14__ {TYPE_2__ data; int src; int dest; } ;
typedef TYPE_3__ quicly_datagram_t ;
struct TYPE_15__ {TYPE_5__* packet_allocator; TYPE_7__* cid_encryptor; TYPE_1__* tls; } ;
typedef TYPE_4__ quicly_context_t ;
struct TYPE_17__ {int (* generate_stateless_reset_token ) (TYPE_7__*,int*,void const*) ;} ;
struct TYPE_16__ {int (* free_packet ) (TYPE_5__*,TYPE_3__*) ;TYPE_3__* (* alloc_packet ) (TYPE_5__*,int) ;} ;
struct TYPE_12__ {int (* random_bytes ) (int*,int) ;} ;


 int QUICLY_LONG_HEADER_RESERVED_BITS ;
 int QUICLY_QUIC_BIT ;
 int QUICLY_STATELESS_RESET_PACKET_MIN_LEN ;
 int QUICLY_STATELESS_RESET_TOKEN_LEN ;
 int set_address (int *,struct sockaddr*) ;
 TYPE_3__* stub1 (TYPE_5__*,int) ;
 int stub2 (int*,int) ;
 int stub3 (TYPE_7__*,int*,void const*) ;
 int stub4 (TYPE_5__*,TYPE_3__*) ;

quicly_datagram_t *quicly_send_stateless_reset(quicly_context_t *ctx, struct sockaddr *dest_addr, struct sockaddr *src_addr,
                                               const void *src_cid)
{
    quicly_datagram_t *dgram;


    if ((dgram = ctx->packet_allocator->alloc_packet(ctx->packet_allocator, QUICLY_STATELESS_RESET_PACKET_MIN_LEN)) == ((void*)0))
        return ((void*)0);
    set_address(&dgram->dest, dest_addr);
    set_address(&dgram->src, src_addr);


    ctx->tls->random_bytes(dgram->data.base, QUICLY_STATELESS_RESET_PACKET_MIN_LEN - QUICLY_STATELESS_RESET_TOKEN_LEN);
    dgram->data.base[0] = QUICLY_QUIC_BIT | (dgram->data.base[0] & ~QUICLY_LONG_HEADER_RESERVED_BITS);
    if (!ctx->cid_encryptor->generate_stateless_reset_token(
            ctx->cid_encryptor, dgram->data.base + QUICLY_STATELESS_RESET_PACKET_MIN_LEN - QUICLY_STATELESS_RESET_TOKEN_LEN,
            src_cid)) {
        ctx->packet_allocator->free_packet(ctx->packet_allocator, dgram);
        return ((void*)0);
    }
    dgram->data.len = QUICLY_STATELESS_RESET_PACKET_MIN_LEN;

    return dgram;
}
