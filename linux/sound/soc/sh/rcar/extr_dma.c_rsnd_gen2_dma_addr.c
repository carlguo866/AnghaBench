
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;
struct TYPE_16__ {int member_1; int member_0; } ;
struct TYPE_15__ {int member_1; int member_0; } ;
struct TYPE_14__ {int member_1; int member_0; } ;
struct TYPE_13__ {TYPE_8__ member_2; TYPE_7__ member_1; TYPE_6__ member_0; } ;
struct TYPE_12__ {int member_1; int member_0; } ;
struct TYPE_11__ {int member_1; int member_0; } ;
struct TYPE_10__ {int member_1; int member_0; } ;
struct TYPE_9__ {TYPE_4__ member_2; TYPE_3__ member_1; TYPE_2__ member_0; } ;


 int RDMA_CMD_O_N (int ,int) ;
 int RDMA_CMD_O_P (int ,int) ;
 int RDMA_SRC_I_N (int ,int) ;
 int RDMA_SRC_I_P (int ,int) ;
 int RDMA_SRC_O_N (int ,int) ;
 int RDMA_SRC_O_P (int ,int) ;
 int RDMA_SSIU_I_N (int ,int,int) ;
 int RDMA_SSIU_I_P (int ,int,int) ;
 int RDMA_SSIU_O_N (int ,int,int) ;
 int RDMA_SSIU_O_P (int ,int,int) ;
 int RDMA_SSI_I_N (int ,int) ;
 int RDMA_SSI_O_N (int ,int) ;
 int RSND_GEN2_SCU ;
 int RSND_GEN2_SSI ;
 int dev_err (struct device*,char*,...) ;
 int rsnd_gen_get_phy_addr (struct rsnd_priv*,int ) ;
 int rsnd_io_to_mod_ctu (struct rsnd_dai_stream*) ;
 int rsnd_io_to_mod_dvc (struct rsnd_dai_stream*) ;
 int rsnd_io_to_mod_mix (struct rsnd_dai_stream*) ;
 int rsnd_io_to_mod_src (struct rsnd_dai_stream*) ;
 struct rsnd_mod* rsnd_io_to_mod_ssi (struct rsnd_dai_stream*) ;
 struct rsnd_mod* rsnd_io_to_mod_ssiu (struct rsnd_dai_stream*) ;
 struct rsnd_priv* rsnd_io_to_priv (struct rsnd_dai_stream*) ;
 int rsnd_mod_id (struct rsnd_mod*) ;
 int rsnd_mod_id_sub (struct rsnd_mod*) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;
 scalar_t__ rsnd_ssi_use_busif (struct rsnd_dai_stream*) ;
 int src ;
 int ssi ;

__attribute__((used)) static dma_addr_t
rsnd_gen2_dma_addr(struct rsnd_dai_stream *io,
     struct rsnd_mod *mod,
     int is_play, int is_from)
{
 struct rsnd_priv *priv = rsnd_io_to_priv(io);
 struct device *dev = rsnd_priv_to_dev(priv);
 phys_addr_t ssi_reg = rsnd_gen_get_phy_addr(priv, RSND_GEN2_SSI);
 phys_addr_t src_reg = rsnd_gen_get_phy_addr(priv, RSND_GEN2_SCU);
 int is_ssi = !!(rsnd_io_to_mod_ssi(io) == mod) ||
       !!(rsnd_io_to_mod_ssiu(io) == mod);
 int use_src = !!rsnd_io_to_mod_src(io);
 int use_cmd = !!rsnd_io_to_mod_dvc(io) ||
        !!rsnd_io_to_mod_mix(io) ||
        !!rsnd_io_to_mod_ctu(io);
 int id = rsnd_mod_id(mod);
 int busif = rsnd_mod_id_sub(rsnd_io_to_mod_ssiu(io));
 struct dma_addr {
  dma_addr_t out_addr;
  dma_addr_t in_addr;
 } dma_addrs[3][2][3] = {


  {{{ 0, 0 },
    { RDMA_SRC_O_N(src, id), RDMA_SRC_I_P(src, id) },
    { RDMA_CMD_O_N(src, id), RDMA_SRC_I_P(src, id) } },

   {{ 0, 0, },
    { RDMA_SRC_O_P(src, id), RDMA_SRC_I_N(src, id) },
    { RDMA_CMD_O_P(src, id), RDMA_SRC_I_N(src, id) } }
  },


  {{{ RDMA_SSI_O_N(ssi, id), 0 },
    { RDMA_SSIU_O_P(ssi, id, busif), 0 },
    { RDMA_SSIU_O_P(ssi, id, busif), 0 } },

   {{ 0, RDMA_SSI_I_N(ssi, id) },
    { 0, RDMA_SSIU_I_P(ssi, id, busif) },
    { 0, RDMA_SSIU_I_P(ssi, id, busif) } }
  },


  {{{ RDMA_SSIU_O_N(ssi, id, busif), 0 },
    { RDMA_SSIU_O_P(ssi, id, busif), 0 },
    { RDMA_SSIU_O_P(ssi, id, busif), 0 } },

   {{ 0, RDMA_SSIU_I_N(ssi, id, busif) },
    { 0, RDMA_SSIU_I_P(ssi, id, busif) },
    { 0, RDMA_SSIU_I_P(ssi, id, busif) } } },
 };







 if ((id == 9) && (busif >= 4))
  dev_err(dev, "This driver doesn't support SSI%d-%d, so far",
   id, busif);


 if (use_cmd && !use_src)
  dev_err(dev, "DVC is selected without SRC\n");


 if (is_ssi && rsnd_ssi_use_busif(io))
  is_ssi++;

 return (is_from) ?
  dma_addrs[is_ssi][is_play][use_src + use_cmd].out_addr :
  dma_addrs[is_ssi][is_play][use_src + use_cmd].in_addr;
}
