
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef scalar_t__ uint32_t ;
struct st_ptls_record_t {int* fragment; int type; int length; } ;
struct TYPE_18__ {scalar_t__ early_data_skipped_bytes; } ;
struct TYPE_15__ {int * base; } ;
struct TYPE_17__ {int rec; TYPE_1__ mess; } ;
struct TYPE_14__ {int * aead; } ;
struct TYPE_16__ {TYPE_13__ dec; } ;
struct TYPE_19__ {scalar_t__ state; TYPE_4__ server; TYPE_3__ recvbuf; TYPE_2__ traffic_protection; scalar_t__ is_server; } ;
typedef TYPE_5__ ptls_t ;
typedef int ptls_message_emitter_t ;
typedef int ptls_handshake_properties_t ;
struct TYPE_20__ {int* base; int off; } ;
typedef TYPE_6__ ptls_buffer_t ;


 int PTLS_ALERT_HANDSHAKE_FAILURE ;
 int PTLS_ALERT_ILLEGAL_PARAMETER ;
 int PTLS_ALERT_UNEXPECTED_MESSAGE ;


 int PTLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC ;
 int PTLS_CONTENT_TYPE_HANDSHAKE ;
 int PTLS_ERROR_IN_PROGRESS ;
 scalar_t__ PTLS_MAX_EARLY_DATA_SKIP_SIZE ;
 scalar_t__ PTLS_STATE_POST_HANDSHAKE_MIN ;
 scalar_t__ PTLS_STATE_SERVER_EXPECT_END_OF_EARLY_DATA ;
 scalar_t__ UINT32_MAX ;
 int aead_decrypt (TYPE_13__*,int*,size_t*,int*,int) ;
 int assert (int ) ;
 int handle_alert (TYPE_5__*,int*,size_t) ;
 int handle_handshake_message ;
 int handle_handshake_record (TYPE_5__*,int ,int *,struct st_ptls_record_t*,int *) ;
 int parse_record (TYPE_5__*,struct st_ptls_record_t*,void const*,size_t*) ;
 int ptls_buffer_dispose (int *) ;
 int ptls_buffer_reserve (TYPE_6__*,int) ;

__attribute__((used)) static int handle_input(ptls_t *tls, ptls_message_emitter_t *emitter, ptls_buffer_t *decryptbuf, const void *input, size_t *inlen,
                        ptls_handshake_properties_t *properties)
{
    struct st_ptls_record_t rec;
    int ret;


    if ((ret = parse_record(tls, &rec, input, inlen)) != 0)
        return ret;
    assert(rec.fragment != ((void*)0));


    if (rec.type == PTLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC) {
        if (tls->state < PTLS_STATE_POST_HANDSHAKE_MIN) {
            if (!(rec.length == 1 && rec.fragment[0] == 0x01))
                return PTLS_ALERT_ILLEGAL_PARAMETER;
        } else {
            return PTLS_ALERT_HANDSHAKE_FAILURE;
        }
        ret = PTLS_ERROR_IN_PROGRESS;
        goto NextRecord;
    }
    if (tls->traffic_protection.dec.aead != ((void*)0) && rec.type != 129) {
        size_t decrypted_length;
        if (rec.type != 128)
            return PTLS_ALERT_HANDSHAKE_FAILURE;
        if ((ret = ptls_buffer_reserve(decryptbuf, 5 + rec.length)) != 0)
            return ret;
        if ((ret = aead_decrypt(&tls->traffic_protection.dec, decryptbuf->base + decryptbuf->off, &decrypted_length, rec.fragment,
                                rec.length)) != 0) {
            if (tls->is_server && tls->server.early_data_skipped_bytes != UINT32_MAX)
                goto ServerSkipEarlyData;
            return ret;
        }
        rec.length = decrypted_length;
        rec.fragment = decryptbuf->base + decryptbuf->off;

        for (; rec.length != 0; --rec.length)
            if (rec.fragment[rec.length - 1] != 0)
                break;
        if (rec.length == 0)
            return PTLS_ALERT_UNEXPECTED_MESSAGE;
        rec.type = rec.fragment[--rec.length];
    } else if (rec.type == 128 && tls->is_server && tls->server.early_data_skipped_bytes != UINT32_MAX) {
        goto ServerSkipEarlyData;
    }

    if (tls->recvbuf.mess.base != ((void*)0) || rec.type == PTLS_CONTENT_TYPE_HANDSHAKE) {

        ret = handle_handshake_record(tls, handle_handshake_message, emitter, &rec, properties);
    } else {

        switch (rec.type) {
        case 128:
            if (tls->state >= PTLS_STATE_POST_HANDSHAKE_MIN) {
                decryptbuf->off += rec.length;
                ret = 0;
            } else if (tls->state == PTLS_STATE_SERVER_EXPECT_END_OF_EARLY_DATA) {
                if (tls->traffic_protection.dec.aead != ((void*)0))
                    decryptbuf->off += rec.length;
                ret = 0;
            } else {
                ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
            }
            break;
        case 129:
            ret = handle_alert(tls, rec.fragment, rec.length);
            break;
        default:
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
            break;
        }
    }

NextRecord:
    ptls_buffer_dispose(&tls->recvbuf.rec);
    return ret;

ServerSkipEarlyData:
    tls->server.early_data_skipped_bytes += (uint32_t)rec.length;
    if (tls->server.early_data_skipped_bytes > PTLS_MAX_EARLY_DATA_SKIP_SIZE)
        return PTLS_ALERT_HANDSHAKE_FAILURE;
    ret = PTLS_ERROR_IN_PROGRESS;
    goto NextRecord;
}
