
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct st_ptls_record_t {scalar_t__ type; size_t length; void* version; } ;


 int PTLS_ALERT_DECODE_ERROR ;
 scalar_t__ PTLS_CONTENT_TYPE_APPDATA ;
 scalar_t__ PTLS_MAX_ENCRYPTED_RECORD_SIZE ;
 scalar_t__ PTLS_MAX_PLAINTEXT_RECORD_SIZE ;
 void* ntoh16 (scalar_t__ const*) ;

__attribute__((used)) static int parse_record_header(struct st_ptls_record_t *rec, const uint8_t *src)
{
    rec->type = src[0];
    rec->version = ntoh16(src + 1);
    rec->length = ntoh16(src + 3);

    if (rec->length >
        (size_t)(rec->type == PTLS_CONTENT_TYPE_APPDATA ? PTLS_MAX_ENCRYPTED_RECORD_SIZE : PTLS_MAX_PLAINTEXT_RECORD_SIZE))
        return PTLS_ALERT_DECODE_ERROR;

    return 0;
}
