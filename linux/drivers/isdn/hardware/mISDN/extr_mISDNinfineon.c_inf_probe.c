
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int irq; } ;
struct inf_hw {struct inf_hw** sc; TYPE_1__* ci; struct pci_dev* pdev; int irq; } ;
struct TYPE_2__ {int full; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ INF_SCT_1 ;
 TYPE_1__* get_card_info (scalar_t__) ;
 int kfree (struct inf_hw*) ;
 struct inf_hw* kzalloc (int,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct inf_hw*) ;
 int pr_info (char*,...) ;
 int pr_notice (char*,int ,int ) ;
 int release_card (struct inf_hw*) ;
 int setup_instance (struct inf_hw*) ;

__attribute__((used)) static int
inf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 int err = -ENOMEM;
 struct inf_hw *card;

 card = kzalloc(sizeof(struct inf_hw), GFP_KERNEL);
 if (!card) {
  pr_info("No memory for Infineon ISDN card\n");
  return err;
 }
 card->pdev = pdev;
 err = pci_enable_device(pdev);
 if (err) {
  kfree(card);
  return err;
 }
 card->ci = get_card_info(ent->driver_data);
 if (!card->ci) {
  pr_info("mISDN: do not have information about adapter at %s\n",
   pci_name(pdev));
  kfree(card);
  pci_disable_device(pdev);
  return -EINVAL;
 } else
  pr_notice("mISDN: found adapter %s at %s\n",
     card->ci->full, pci_name(pdev));

 card->irq = pdev->irq;
 pci_set_drvdata(pdev, card);
 err = setup_instance(card);
 if (err) {
  pci_disable_device(pdev);
  kfree(card);
  pci_set_drvdata(pdev, ((void*)0));
 } else if (ent->driver_data == INF_SCT_1) {
  int i;
  struct inf_hw *sc;

  for (i = 1; i < 4; i++) {
   sc = kzalloc(sizeof(struct inf_hw), GFP_KERNEL);
   if (!sc) {
    release_card(card);
    pci_disable_device(pdev);
    return -ENOMEM;
   }
   sc->irq = card->irq;
   sc->pdev = card->pdev;
   sc->ci = card->ci + i;
   err = setup_instance(sc);
   if (err) {
    pci_disable_device(pdev);
    kfree(sc);
    release_card(card);
    break;
   } else
    card->sc[i - 1] = sc;
  }
 }
 return err;
}
