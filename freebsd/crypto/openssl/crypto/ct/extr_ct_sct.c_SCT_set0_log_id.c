
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ version; unsigned char* log_id; size_t log_id_len; int validation_status; } ;
typedef TYPE_1__ SCT ;


 int CT_F_SCT_SET0_LOG_ID ;
 int CT_R_INVALID_LOG_ID_LENGTH ;
 size_t CT_V1_HASHLEN ;
 int CTerr (int ,int ) ;
 int OPENSSL_free (unsigned char*) ;
 int SCT_VALIDATION_STATUS_NOT_SET ;
 scalar_t__ SCT_VERSION_V1 ;

int SCT_set0_log_id(SCT *sct, unsigned char *log_id, size_t log_id_len)
{
    if (sct->version == SCT_VERSION_V1 && log_id_len != CT_V1_HASHLEN) {
        CTerr(CT_F_SCT_SET0_LOG_ID, CT_R_INVALID_LOG_ID_LENGTH);
        return 0;
    }

    OPENSSL_free(sct->log_id);
    sct->log_id = log_id;
    sct->log_id_len = log_id_len;
    sct->validation_status = SCT_VALIDATION_STATUS_NOT_SET;
    return 1;
}
