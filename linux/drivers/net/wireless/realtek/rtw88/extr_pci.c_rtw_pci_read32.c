
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rtw_pci {scalar_t__ mmap; } ;
struct rtw_dev {scalar_t__ priv; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 rtw_pci_read32(struct rtw_dev *rtwdev, u32 addr)
{
 struct rtw_pci *rtwpci = (struct rtw_pci *)rtwdev->priv;

 return readl(rtwpci->mmap + addr);
}
