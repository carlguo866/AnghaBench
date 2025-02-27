
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tpm_digest {int digest; int alg_id; } ;
struct tpm_chip {int nr_allocated_banks; TYPE_1__* allocated_banks; } ;
struct tpm_buf {int dummy; } ;
struct tpm2_null_auth_area {scalar_t__ auth_size; scalar_t__ attributes; scalar_t__ nonce_size; int handle; } ;
typedef int auth_area ;
struct TYPE_2__ {int digest_size; } ;


 int TPM2_CC_PCR_EXTEND ;
 int TPM2_RS_PW ;
 int TPM2_ST_SESSIONS ;
 int cpu_to_be32 (int ) ;
 int tpm_buf_append (struct tpm_buf*,unsigned char const*,int) ;
 int tpm_buf_append_u16 (struct tpm_buf*,int ) ;
 int tpm_buf_append_u32 (struct tpm_buf*,int) ;
 int tpm_buf_destroy (struct tpm_buf*) ;
 int tpm_buf_init (struct tpm_buf*,int ,int ) ;
 int tpm_transmit_cmd (struct tpm_chip*,struct tpm_buf*,int ,char*) ;

int tpm2_pcr_extend(struct tpm_chip *chip, u32 pcr_idx,
      struct tpm_digest *digests)
{
 struct tpm_buf buf;
 struct tpm2_null_auth_area auth_area;
 int rc;
 int i;

 rc = tpm_buf_init(&buf, TPM2_ST_SESSIONS, TPM2_CC_PCR_EXTEND);
 if (rc)
  return rc;

 tpm_buf_append_u32(&buf, pcr_idx);

 auth_area.handle = cpu_to_be32(TPM2_RS_PW);
 auth_area.nonce_size = 0;
 auth_area.attributes = 0;
 auth_area.auth_size = 0;

 tpm_buf_append_u32(&buf, sizeof(struct tpm2_null_auth_area));
 tpm_buf_append(&buf, (const unsigned char *)&auth_area,
         sizeof(auth_area));
 tpm_buf_append_u32(&buf, chip->nr_allocated_banks);

 for (i = 0; i < chip->nr_allocated_banks; i++) {
  tpm_buf_append_u16(&buf, digests[i].alg_id);
  tpm_buf_append(&buf, (const unsigned char *)&digests[i].digest,
          chip->allocated_banks[i].digest_size);
 }

 rc = tpm_transmit_cmd(chip, &buf, 0, "attempting extend a PCR value");

 tpm_buf_destroy(&buf);

 return rc;
}
