
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct tpm_tis_data {int flags; int locality; } ;
struct tpm_chip {int dev; } ;
typedef int cmd_getticks ;


 int EBUSY ;
 int EFAULT ;
 int TPM_DID_VID (int ) ;
 int TPM_TIS_ITPM_WORKAROUND ;
 scalar_t__ TPM_VID_INTEL ;
 struct tpm_tis_data* dev_get_drvdata (int *) ;
 int dev_info (int *,char*) ;
 int release_locality (struct tpm_chip*,int ) ;
 scalar_t__ request_locality (struct tpm_chip*,int ) ;
 int tpm_tis_read16 (struct tpm_tis_data*,int ,scalar_t__*) ;
 int tpm_tis_ready (struct tpm_chip*) ;
 int tpm_tis_send_data (struct tpm_chip*,int const*,size_t) ;

__attribute__((used)) static int probe_itpm(struct tpm_chip *chip)
{
 struct tpm_tis_data *priv = dev_get_drvdata(&chip->dev);
 int rc = 0;
 static const u8 cmd_getticks[] = {
  0x00, 0xc1, 0x00, 0x00, 0x00, 0x0a,
  0x00, 0x00, 0x00, 0xf1
 };
 size_t len = sizeof(cmd_getticks);
 u16 vendor;

 if (priv->flags & TPM_TIS_ITPM_WORKAROUND)
  return 0;

 rc = tpm_tis_read16(priv, TPM_DID_VID(0), &vendor);
 if (rc < 0)
  return rc;


 if (vendor != TPM_VID_INTEL)
  return 0;

 if (request_locality(chip, 0) != 0)
  return -EBUSY;

 rc = tpm_tis_send_data(chip, cmd_getticks, len);
 if (rc == 0)
  goto out;

 tpm_tis_ready(chip);

 priv->flags |= TPM_TIS_ITPM_WORKAROUND;

 rc = tpm_tis_send_data(chip, cmd_getticks, len);
 if (rc == 0)
  dev_info(&chip->dev, "Detected an iTPM.\n");
 else {
  priv->flags &= ~TPM_TIS_ITPM_WORKAROUND;
  rc = -EFAULT;
 }

out:
 tpm_tis_ready(chip);
 release_locality(chip, priv->locality);

 return rc;
}
