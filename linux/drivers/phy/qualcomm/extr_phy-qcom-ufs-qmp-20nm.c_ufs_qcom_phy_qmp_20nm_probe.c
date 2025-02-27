
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_qcom_phy {int name; } ;
struct ufs_qcom_phy_qmp_20nm {struct ufs_qcom_phy common_cfg; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct phy {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int UFS_PHY_NAME ;
 struct ufs_qcom_phy_qmp_20nm* devm_kzalloc (struct device*,int,int ) ;
 int phy_20nm_ops ;
 int phy_set_drvdata (struct phy*,struct ufs_qcom_phy_qmp_20nm*) ;
 int strlcpy (int ,int ,int) ;
 struct phy* ufs_qcom_phy_generic_probe (struct platform_device*,struct ufs_qcom_phy*,int *,int *) ;
 int ufs_qcom_phy_init_clks (struct ufs_qcom_phy*) ;
 int ufs_qcom_phy_init_vregulators (struct ufs_qcom_phy*) ;
 int ufs_qcom_phy_qmp_20nm_advertise_quirks (struct ufs_qcom_phy*) ;
 int ufs_qcom_phy_qmp_20nm_phy_ops ;

__attribute__((used)) static int ufs_qcom_phy_qmp_20nm_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct phy *generic_phy;
 struct ufs_qcom_phy_qmp_20nm *phy;
 struct ufs_qcom_phy *phy_common;
 int err = 0;

 phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
 if (!phy) {
  err = -ENOMEM;
  goto out;
 }
 phy_common = &phy->common_cfg;

 generic_phy = ufs_qcom_phy_generic_probe(pdev, phy_common,
    &ufs_qcom_phy_qmp_20nm_phy_ops, &phy_20nm_ops);

 if (!generic_phy) {
  err = -EIO;
  goto out;
 }

 err = ufs_qcom_phy_init_clks(phy_common);
 if (err)
  goto out;

 err = ufs_qcom_phy_init_vregulators(phy_common);
 if (err)
  goto out;

 ufs_qcom_phy_qmp_20nm_advertise_quirks(phy_common);

 phy_set_drvdata(generic_phy, phy);

 strlcpy(phy_common->name, UFS_PHY_NAME, sizeof(phy_common->name));

out:
 return err;
}
