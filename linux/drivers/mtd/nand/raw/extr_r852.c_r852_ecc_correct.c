
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct r852_device {int ctlreg; scalar_t__ dma_error; scalar_t__ card_unstable; } ;
struct nand_chip {int dummy; } ;


 int EBADMSG ;
 int EIO ;
 int R852_CTL ;
 int R852_CTL_ECC_ACCESS ;
 int R852_DATALINE ;
 int R852_ECC_CORRECTABLE ;
 int R852_ECC_ERR_BIT_MSK ;
 int R852_ECC_FAIL ;
 int dbg (char*,int,...) ;
 int nand_to_mtd (struct nand_chip*) ;
 struct r852_device* r852_get_dev (int ) ;
 int r852_read_reg_dword (struct r852_device*,int ) ;
 int r852_write_reg (struct r852_device*,int ,int) ;

__attribute__((used)) static int r852_ecc_correct(struct nand_chip *chip, uint8_t *dat,
       uint8_t *read_ecc, uint8_t *calc_ecc)
{
 uint32_t ecc_reg;
 uint8_t ecc_status, err_byte;
 int i, error = 0;

 struct r852_device *dev = r852_get_dev(nand_to_mtd(chip));

 if (dev->card_unstable)
  return 0;

 if (dev->dma_error) {
  dev->dma_error = 0;
  return -EIO;
 }

 r852_write_reg(dev, R852_CTL, dev->ctlreg | R852_CTL_ECC_ACCESS);
 ecc_reg = r852_read_reg_dword(dev, R852_DATALINE);
 r852_write_reg(dev, R852_CTL, dev->ctlreg);

 for (i = 0 ; i <= 1 ; i++) {

  ecc_status = (ecc_reg >> 8) & 0xFF;


  if (ecc_status & R852_ECC_FAIL) {
   dbg("ecc: unrecoverable error, in half %d", i);
   error = -EBADMSG;
   goto exit;
  }


  if (ecc_status & R852_ECC_CORRECTABLE) {

   err_byte = ecc_reg & 0xFF;
   dbg("ecc: recoverable error, "
    "in half %d, byte %d, bit %d", i,
    err_byte, ecc_status & R852_ECC_ERR_BIT_MSK);

   dat[err_byte] ^=
    1 << (ecc_status & R852_ECC_ERR_BIT_MSK);
   error++;
  }

  dat += 256;
  ecc_reg >>= 16;
 }
exit:
 return error;
}
