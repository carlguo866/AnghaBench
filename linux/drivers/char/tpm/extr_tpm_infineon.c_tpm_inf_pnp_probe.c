
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tpm_chip {int dummy; } ;
struct pnp_device_id {int id; } ;
struct pnp_dev {int dev; int name; } ;
struct TYPE_2__ {scalar_t__ iotype; int config_port; int config_size; int data_regs; int data_size; int map_base; int index_off; int map_size; int * mem_base; } ;


 int CHIP_ID1 ;
 int CHIP_ID2 ;
 int CMD ;
 int DISABLE_REGISTER_PAIR ;
 int EINVAL ;
 int EIO ;
 int ENABLE_REGISTER_PAIR ;
 int ENODEV ;
 int IDPDH ;
 int IDPDL ;
 int IDVENH ;
 int IDVENL ;
 int IOLIMH ;
 int IOLIML ;
 int IORESOURCE_DISABLED ;
 scalar_t__ IS_ERR (struct tpm_chip*) ;
 int PTR_ERR (struct tpm_chip*) ;
 int RESET_LP_IRQC_DISABLE ;
 int TPM_ADDR ;
 int TPM_DAR ;
 int TPM_INFINEON_DEV_VEN_VALUE ;
 int TPM_INF_ADDR ;
 int TPM_INF_DATA ;
 scalar_t__ TPM_INF_IO_MEM ;
 scalar_t__ TPM_INF_IO_PORT ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int,int,...) ;
 int * ioremap (int,int ) ;
 int iounmap (int *) ;
 int pnp_mem_flags (struct pnp_dev*,int ) ;
 int pnp_mem_len (struct pnp_dev*,int ) ;
 int pnp_mem_start (struct pnp_dev*,int ) ;
 scalar_t__ pnp_mem_valid (struct pnp_dev*,int ) ;
 int pnp_port_flags (struct pnp_dev*,int ) ;
 void* pnp_port_len (struct pnp_dev*,int) ;
 void* pnp_port_start (struct pnp_dev*,int) ;
 scalar_t__ pnp_port_valid (struct pnp_dev*,int) ;
 int release_mem_region (int,int ) ;
 int release_region (int,int) ;
 int * request_mem_region (int,int ,char*) ;
 int * request_region (int,int,char*) ;
 int tpm_chip_register (struct tpm_chip*) ;
 int tpm_config_in (int ) ;
 int tpm_config_out (int,int ) ;
 int tpm_data_out (int ,int ) ;
 TYPE_1__ tpm_dev ;
 int tpm_inf ;
 struct tpm_chip* tpmm_chip_alloc (int *,int *) ;

__attribute__((used)) static int tpm_inf_pnp_probe(struct pnp_dev *dev,
           const struct pnp_device_id *dev_id)
{
 int rc = 0;
 u8 iol, ioh;
 int vendorid[2];
 int version[2];
 int productid[2];
 const char *chipname;
 struct tpm_chip *chip;


 if (pnp_port_valid(dev, 0) && pnp_port_valid(dev, 1) &&
     !(pnp_port_flags(dev, 0) & IORESOURCE_DISABLED)) {

  tpm_dev.iotype = TPM_INF_IO_PORT;

  tpm_dev.config_port = pnp_port_start(dev, 0);
  tpm_dev.config_size = pnp_port_len(dev, 0);
  tpm_dev.data_regs = pnp_port_start(dev, 1);
  tpm_dev.data_size = pnp_port_len(dev, 1);
  if ((tpm_dev.data_size < 4) || (tpm_dev.config_size < 2)) {
   rc = -EINVAL;
   goto err_last;
  }
  dev_info(&dev->dev, "Found %s with ID %s\n",
    dev->name, dev_id->id);
  if (!((tpm_dev.data_regs >> 8) & 0xff)) {
   rc = -EINVAL;
   goto err_last;
  }

  if (request_region(tpm_dev.data_regs, tpm_dev.data_size,
       "tpm_infineon0") == ((void*)0)) {
   rc = -EINVAL;
   goto err_last;
  }
  if (request_region(tpm_dev.config_port, tpm_dev.config_size,
       "tpm_infineon0") == ((void*)0)) {
   release_region(tpm_dev.data_regs, tpm_dev.data_size);
   rc = -EINVAL;
   goto err_last;
  }
 } else if (pnp_mem_valid(dev, 0) &&
     !(pnp_mem_flags(dev, 0) & IORESOURCE_DISABLED)) {

  tpm_dev.iotype = TPM_INF_IO_MEM;

  tpm_dev.map_base = pnp_mem_start(dev, 0);
  tpm_dev.map_size = pnp_mem_len(dev, 0);

  dev_info(&dev->dev, "Found %s with ID %s\n",
    dev->name, dev_id->id);


  if (request_mem_region(tpm_dev.map_base, tpm_dev.map_size,
           "tpm_infineon0") == ((void*)0)) {
   rc = -EINVAL;
   goto err_last;
  }

  tpm_dev.mem_base = ioremap(tpm_dev.map_base, tpm_dev.map_size);
  if (tpm_dev.mem_base == ((void*)0)) {
   release_mem_region(tpm_dev.map_base, tpm_dev.map_size);
   rc = -EINVAL;
   goto err_last;
  }
  tpm_dev.index_off = TPM_ADDR;
  tpm_dev.data_regs = 0x0;
 } else {
  rc = -EINVAL;
  goto err_last;
 }


 tpm_config_out(ENABLE_REGISTER_PAIR, TPM_INF_ADDR);
 tpm_config_out(IDVENL, TPM_INF_ADDR);
 vendorid[1] = tpm_config_in(TPM_INF_DATA);
 tpm_config_out(IDVENH, TPM_INF_ADDR);
 vendorid[0] = tpm_config_in(TPM_INF_DATA);
 tpm_config_out(IDPDL, TPM_INF_ADDR);
 productid[1] = tpm_config_in(TPM_INF_DATA);
 tpm_config_out(IDPDH, TPM_INF_ADDR);
 productid[0] = tpm_config_in(TPM_INF_DATA);
 tpm_config_out(CHIP_ID1, TPM_INF_ADDR);
 version[1] = tpm_config_in(TPM_INF_DATA);
 tpm_config_out(CHIP_ID2, TPM_INF_ADDR);
 version[0] = tpm_config_in(TPM_INF_DATA);

 switch ((productid[0] << 8) | productid[1]) {
 case 6:
  chipname = " (SLD 9630 TT 1.1)";
  break;
 case 11:
  chipname = " (SLB 9635 TT 1.2)";
  break;
 default:
  chipname = " (unknown chip)";
  break;
 }

 if ((vendorid[0] << 8 | vendorid[1]) == (TPM_INFINEON_DEV_VEN_VALUE)) {


  tpm_config_out(IOLIMH, TPM_INF_ADDR);
  tpm_config_out((tpm_dev.data_regs >> 8) & 0xff, TPM_INF_DATA);
  tpm_config_out(IOLIML, TPM_INF_ADDR);
  tpm_config_out((tpm_dev.data_regs & 0xff), TPM_INF_DATA);


  tpm_config_out(IOLIMH, TPM_INF_ADDR);
  ioh = tpm_config_in(TPM_INF_DATA);
  tpm_config_out(IOLIML, TPM_INF_ADDR);
  iol = tpm_config_in(TPM_INF_DATA);

  if ((ioh << 8 | iol) != tpm_dev.data_regs) {
   dev_err(&dev->dev,
    "Could not set IO-data registers to 0x%x\n",
    tpm_dev.data_regs);
   rc = -EIO;
   goto err_release_region;
  }


  tpm_config_out(TPM_DAR, TPM_INF_ADDR);
  tpm_config_out(0x01, TPM_INF_DATA);
  tpm_config_out(DISABLE_REGISTER_PAIR, TPM_INF_ADDR);


  tpm_data_out(RESET_LP_IRQC_DISABLE, CMD);


  dev_info(&dev->dev, "TPM found: "
    "config base 0x%lx, "
    "data base 0x%lx, "
    "chip version 0x%02x%02x, "
    "vendor id 0x%x%x (Infineon), "
    "product id 0x%02x%02x"
    "%s\n",
    tpm_dev.iotype == TPM_INF_IO_PORT ?
    tpm_dev.config_port :
    tpm_dev.map_base + tpm_dev.index_off,
    tpm_dev.iotype == TPM_INF_IO_PORT ?
    tpm_dev.data_regs :
    tpm_dev.map_base + tpm_dev.data_regs,
    version[0], version[1],
    vendorid[0], vendorid[1],
    productid[0], productid[1], chipname);

  chip = tpmm_chip_alloc(&dev->dev, &tpm_inf);
  if (IS_ERR(chip)) {
   rc = PTR_ERR(chip);
   goto err_release_region;
  }

  rc = tpm_chip_register(chip);
  if (rc)
   goto err_release_region;

  return 0;
 } else {
  rc = -ENODEV;
  goto err_release_region;
 }

err_release_region:
 if (tpm_dev.iotype == TPM_INF_IO_PORT) {
  release_region(tpm_dev.data_regs, tpm_dev.data_size);
  release_region(tpm_dev.config_port, tpm_dev.config_size);
 } else {
  iounmap(tpm_dev.mem_base);
  release_mem_region(tpm_dev.map_base, tpm_dev.map_size);
 }

err_last:
 return rc;
}
