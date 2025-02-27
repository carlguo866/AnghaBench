
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_nphy_channeltab_entry_rev3 {int radio_tx1_mixg_boost_tune; int radio_tx1_mixa_boost_tune; int radio_tx1_pgag_boost_tune; int radio_tx1_pgaa_boost_tune; int radio_tx1_padg_boost_tune; int radio_tx1_pada_boost_tune; int radio_tx1_intpag_boost_tune; int radio_tx1_intpaa_boost_tune; int radio_rx1_lnag_tune; int radio_rx1_lnaa_tune; int radio_tx0_mixg_boost_tune; int radio_tx0_mixa_boost_tune; int radio_tx0_pgag_boost_tune; int radio_tx0_pgaa_boost_tune; int radio_tx0_padg_boost_tune; int radio_tx0_pada_boost_tune; int radio_tx0_intpag_boost_tune; int radio_tx0_intpaa_boost_tune; int radio_rx0_lnag_tune; int radio_rx0_lnaa_tune; int radio_syn_logen_buf4; int radio_syn_logen_buf3; int radio_syn_logen_mixer2; int radio_syn_logen_vcobuf1; int radio_syn_reserved_addr29; int radio_syn_reserved_addr28; int radio_syn_reserved_addr27; int radio_syn_pll_loopfilter5; int radio_syn_pll_loopfilter4; int radio_syn_pll_loopfilter3; int radio_syn_pll_loopfilter2; int radio_syn_pll_loopfilter1; int radio_syn_pll_mmd1; int radio_syn_pll_mmd2; int radio_syn_pll_refdiv; int radio_syn_pll_vcocal2; int radio_syn_pll_vcocal1; } ;
struct bwn_mac {int dummy; } ;


 int B2056_RX0 ;
 int B2056_RX1 ;
 int B2056_RX_LNAA_TUNE ;
 int B2056_RX_LNAG_TUNE ;
 int B2056_SYN_LOGEN_BUF3 ;
 int B2056_SYN_LOGEN_BUF4 ;
 int B2056_SYN_LOGEN_MIXER2 ;
 int B2056_SYN_LOGEN_VCOBUF1 ;
 int B2056_SYN_PLL_LOOPFILTER1 ;
 int B2056_SYN_PLL_LOOPFILTER2 ;
 int B2056_SYN_PLL_LOOPFILTER3 ;
 int B2056_SYN_PLL_LOOPFILTER4 ;
 int B2056_SYN_PLL_LOOPFILTER5 ;
 int B2056_SYN_PLL_MMD1 ;
 int B2056_SYN_PLL_MMD2 ;
 int B2056_SYN_PLL_REFDIV ;
 int B2056_SYN_PLL_VCOCAL1 ;
 int B2056_SYN_PLL_VCOCAL2 ;
 int B2056_SYN_RESERVED_ADDR27 ;
 int B2056_SYN_RESERVED_ADDR28 ;
 int B2056_SYN_RESERVED_ADDR29 ;
 int B2056_TX0 ;
 int B2056_TX1 ;
 int B2056_TX_INTPAA_BOOST_TUNE ;
 int B2056_TX_INTPAG_BOOST_TUNE ;
 int B2056_TX_MIXA_BOOST_TUNE ;
 int B2056_TX_MIXG_BOOST_TUNE ;
 int B2056_TX_PADA_BOOST_TUNE ;
 int B2056_TX_PADG_BOOST_TUNE ;
 int B2056_TX_PGAA_BOOST_TUNE ;
 int B2056_TX_PGAG_BOOST_TUNE ;
 int BWN_RF_WRITE (struct bwn_mac*,int,int ) ;

__attribute__((used)) static void bwn_chantab_radio_2056_upload(struct bwn_mac *mac,
    const struct bwn_nphy_channeltab_entry_rev3 *e)
{
 BWN_RF_WRITE(mac, B2056_SYN_PLL_VCOCAL1, e->radio_syn_pll_vcocal1);
 BWN_RF_WRITE(mac, B2056_SYN_PLL_VCOCAL2, e->radio_syn_pll_vcocal2);
 BWN_RF_WRITE(mac, B2056_SYN_PLL_REFDIV, e->radio_syn_pll_refdiv);
 BWN_RF_WRITE(mac, B2056_SYN_PLL_MMD2, e->radio_syn_pll_mmd2);
 BWN_RF_WRITE(mac, B2056_SYN_PLL_MMD1, e->radio_syn_pll_mmd1);
 BWN_RF_WRITE(mac, B2056_SYN_PLL_LOOPFILTER1,
     e->radio_syn_pll_loopfilter1);
 BWN_RF_WRITE(mac, B2056_SYN_PLL_LOOPFILTER2,
     e->radio_syn_pll_loopfilter2);
 BWN_RF_WRITE(mac, B2056_SYN_PLL_LOOPFILTER3,
     e->radio_syn_pll_loopfilter3);
 BWN_RF_WRITE(mac, B2056_SYN_PLL_LOOPFILTER4,
     e->radio_syn_pll_loopfilter4);
 BWN_RF_WRITE(mac, B2056_SYN_PLL_LOOPFILTER5,
     e->radio_syn_pll_loopfilter5);
 BWN_RF_WRITE(mac, B2056_SYN_RESERVED_ADDR27,
     e->radio_syn_reserved_addr27);
 BWN_RF_WRITE(mac, B2056_SYN_RESERVED_ADDR28,
     e->radio_syn_reserved_addr28);
 BWN_RF_WRITE(mac, B2056_SYN_RESERVED_ADDR29,
     e->radio_syn_reserved_addr29);
 BWN_RF_WRITE(mac, B2056_SYN_LOGEN_VCOBUF1,
     e->radio_syn_logen_vcobuf1);
 BWN_RF_WRITE(mac, B2056_SYN_LOGEN_MIXER2, e->radio_syn_logen_mixer2);
 BWN_RF_WRITE(mac, B2056_SYN_LOGEN_BUF3, e->radio_syn_logen_buf3);
 BWN_RF_WRITE(mac, B2056_SYN_LOGEN_BUF4, e->radio_syn_logen_buf4);

 BWN_RF_WRITE(mac, B2056_RX0 | B2056_RX_LNAA_TUNE,
     e->radio_rx0_lnaa_tune);
 BWN_RF_WRITE(mac, B2056_RX0 | B2056_RX_LNAG_TUNE,
     e->radio_rx0_lnag_tune);

 BWN_RF_WRITE(mac, B2056_TX0 | B2056_TX_INTPAA_BOOST_TUNE,
     e->radio_tx0_intpaa_boost_tune);
 BWN_RF_WRITE(mac, B2056_TX0 | B2056_TX_INTPAG_BOOST_TUNE,
     e->radio_tx0_intpag_boost_tune);
 BWN_RF_WRITE(mac, B2056_TX0 | B2056_TX_PADA_BOOST_TUNE,
     e->radio_tx0_pada_boost_tune);
 BWN_RF_WRITE(mac, B2056_TX0 | B2056_TX_PADG_BOOST_TUNE,
     e->radio_tx0_padg_boost_tune);
 BWN_RF_WRITE(mac, B2056_TX0 | B2056_TX_PGAA_BOOST_TUNE,
     e->radio_tx0_pgaa_boost_tune);
 BWN_RF_WRITE(mac, B2056_TX0 | B2056_TX_PGAG_BOOST_TUNE,
     e->radio_tx0_pgag_boost_tune);
 BWN_RF_WRITE(mac, B2056_TX0 | B2056_TX_MIXA_BOOST_TUNE,
     e->radio_tx0_mixa_boost_tune);
 BWN_RF_WRITE(mac, B2056_TX0 | B2056_TX_MIXG_BOOST_TUNE,
     e->radio_tx0_mixg_boost_tune);

 BWN_RF_WRITE(mac, B2056_RX1 | B2056_RX_LNAA_TUNE,
     e->radio_rx1_lnaa_tune);
 BWN_RF_WRITE(mac, B2056_RX1 | B2056_RX_LNAG_TUNE,
     e->radio_rx1_lnag_tune);

 BWN_RF_WRITE(mac, B2056_TX1 | B2056_TX_INTPAA_BOOST_TUNE,
     e->radio_tx1_intpaa_boost_tune);
 BWN_RF_WRITE(mac, B2056_TX1 | B2056_TX_INTPAG_BOOST_TUNE,
     e->radio_tx1_intpag_boost_tune);
 BWN_RF_WRITE(mac, B2056_TX1 | B2056_TX_PADA_BOOST_TUNE,
     e->radio_tx1_pada_boost_tune);
 BWN_RF_WRITE(mac, B2056_TX1 | B2056_TX_PADG_BOOST_TUNE,
     e->radio_tx1_padg_boost_tune);
 BWN_RF_WRITE(mac, B2056_TX1 | B2056_TX_PGAA_BOOST_TUNE,
     e->radio_tx1_pgaa_boost_tune);
 BWN_RF_WRITE(mac, B2056_TX1 | B2056_TX_PGAG_BOOST_TUNE,
     e->radio_tx1_pgag_boost_tune);
 BWN_RF_WRITE(mac, B2056_TX1 | B2056_TX_MIXA_BOOST_TUNE,
     e->radio_tx1_mixa_boost_tune);
 BWN_RF_WRITE(mac, B2056_TX1 | B2056_TX_MIXG_BOOST_TUNE,
     e->radio_tx1_mixg_boost_tune);
}
