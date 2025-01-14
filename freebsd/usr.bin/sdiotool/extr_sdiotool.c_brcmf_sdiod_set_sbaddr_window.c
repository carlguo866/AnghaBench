
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct brcmf_sdio_dev {scalar_t__ state; } ;


 scalar_t__ BRCMF_SDIOD_NOMEDIUM ;
 int ENOMEDIUM ;
 scalar_t__ SBSDIO_FUNC1_SBADDRLOW ;
 int SBSDIO_SBADDRHIGH_MASK ;
 int SBSDIO_SBADDRLOW_MASK ;
 int SBSDIO_SBADDRMID_MASK ;
 int brcmf_err (char*,scalar_t__) ;
 int brcmf_sdiod_regrw_helper (struct brcmf_sdio_dev*,scalar_t__,int,int*,int) ;

__attribute__((used)) static int
brcmf_sdiod_set_sbaddr_window(struct brcmf_sdio_dev *sdiodev, u32 address)
{
 int err = 0, i;
 u8 addr[3];

 if (sdiodev->state == BRCMF_SDIOD_NOMEDIUM)
  return -ENOMEDIUM;

 addr[0] = (address >> 8) & SBSDIO_SBADDRLOW_MASK;
 addr[1] = (address >> 16) & SBSDIO_SBADDRMID_MASK;
 addr[2] = (address >> 24) & SBSDIO_SBADDRHIGH_MASK;

 for (i = 0; i < 3; i++) {
  err = brcmf_sdiod_regrw_helper(sdiodev,
            SBSDIO_FUNC1_SBADDRLOW + i,
            sizeof(u8), &addr[i], 1);
  if (err) {
   brcmf_err("failed at addr: 0x%0x\n",
      SBSDIO_FUNC1_SBADDRLOW + i);
   break;
  }
 }

 return err;
}
