
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net {int dummy; } ;
struct nfp_flower_priv {struct nfp_net* nn; } ;
struct nfp_app {TYPE_1__* pf; struct nfp_flower_priv* priv; } ;
struct TYPE_2__ {int num_vfs; } ;


 int NFP_FLOWER_CMSG_PORT_VNIC_TYPE_PF ;
 int NFP_FLOWER_CMSG_PORT_VNIC_TYPE_VF ;
 int NFP_REPR_TYPE_PF ;
 int NFP_REPR_TYPE_PHYS_PORT ;
 int NFP_REPR_TYPE_VF ;
 int nfp_flower_spawn_phy_reprs (struct nfp_app*,struct nfp_flower_priv*) ;
 int nfp_flower_spawn_vnic_reprs (struct nfp_app*,int ,int ,int) ;
 int nfp_reprs_clean_and_free_by_type (struct nfp_app*,int ) ;

__attribute__((used)) static int nfp_flower_vnic_init(struct nfp_app *app, struct nfp_net *nn)
{
 struct nfp_flower_priv *priv = app->priv;
 int err;

 priv->nn = nn;

 err = nfp_flower_spawn_phy_reprs(app, app->priv);
 if (err)
  goto err_clear_nn;

 err = nfp_flower_spawn_vnic_reprs(app,
       NFP_FLOWER_CMSG_PORT_VNIC_TYPE_PF,
       NFP_REPR_TYPE_PF, 1);
 if (err)
  goto err_destroy_reprs_phy;

 if (app->pf->num_vfs) {
  err = nfp_flower_spawn_vnic_reprs(app,
        NFP_FLOWER_CMSG_PORT_VNIC_TYPE_VF,
        NFP_REPR_TYPE_VF,
        app->pf->num_vfs);
  if (err)
   goto err_destroy_reprs_pf;
 }

 return 0;

err_destroy_reprs_pf:
 nfp_reprs_clean_and_free_by_type(app, NFP_REPR_TYPE_PF);
err_destroy_reprs_phy:
 nfp_reprs_clean_and_free_by_type(app, NFP_REPR_TYPE_PHYS_PORT);
err_clear_nn:
 priv->nn = ((void*)0);
 return err;
}
