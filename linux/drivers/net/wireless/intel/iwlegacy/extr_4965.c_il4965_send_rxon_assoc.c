
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_rxon_cmd {scalar_t__ flags; scalar_t__ filter_flags; scalar_t__ cck_basic_rates; scalar_t__ ofdm_ht_single_stream_basic_rates; scalar_t__ ofdm_ht_dual_stream_basic_rates; scalar_t__ rx_chain; scalar_t__ ofdm_basic_rates; } ;
struct il_priv {struct il_rxon_cmd staging; int mutex; struct il_rxon_cmd active; } ;
struct il4965_rxon_assoc_cmd {scalar_t__ flags; scalar_t__ filter_flags; scalar_t__ ofdm_basic_rates; scalar_t__ cck_basic_rates; scalar_t__ ofdm_ht_single_stream_basic_rates; scalar_t__ ofdm_ht_dual_stream_basic_rates; scalar_t__ rx_chain_select_flags; scalar_t__ reserved; } ;
typedef int rxon_assoc ;


 int C_RXON_ASSOC ;
 int D_INFO (char*) ;
 int il_send_cmd_pdu_async (struct il_priv*,int ,int,struct il4965_rxon_assoc_cmd*,int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int
il4965_send_rxon_assoc(struct il_priv *il)
{
 int ret = 0;
 struct il4965_rxon_assoc_cmd rxon_assoc;
 const struct il_rxon_cmd *rxon1 = &il->staging;
 const struct il_rxon_cmd *rxon2 = &il->active;

 lockdep_assert_held(&il->mutex);

 if (rxon1->flags == rxon2->flags &&
     rxon1->filter_flags == rxon2->filter_flags &&
     rxon1->cck_basic_rates == rxon2->cck_basic_rates &&
     rxon1->ofdm_ht_single_stream_basic_rates ==
     rxon2->ofdm_ht_single_stream_basic_rates &&
     rxon1->ofdm_ht_dual_stream_basic_rates ==
     rxon2->ofdm_ht_dual_stream_basic_rates &&
     rxon1->rx_chain == rxon2->rx_chain &&
     rxon1->ofdm_basic_rates == rxon2->ofdm_basic_rates) {
  D_INFO("Using current RXON_ASSOC.  Not resending.\n");
  return 0;
 }

 rxon_assoc.flags = il->staging.flags;
 rxon_assoc.filter_flags = il->staging.filter_flags;
 rxon_assoc.ofdm_basic_rates = il->staging.ofdm_basic_rates;
 rxon_assoc.cck_basic_rates = il->staging.cck_basic_rates;
 rxon_assoc.reserved = 0;
 rxon_assoc.ofdm_ht_single_stream_basic_rates =
     il->staging.ofdm_ht_single_stream_basic_rates;
 rxon_assoc.ofdm_ht_dual_stream_basic_rates =
     il->staging.ofdm_ht_dual_stream_basic_rates;
 rxon_assoc.rx_chain_select_flags = il->staging.rx_chain;

 ret =
     il_send_cmd_pdu_async(il, C_RXON_ASSOC, sizeof(rxon_assoc),
      &rxon_assoc, ((void*)0));

 return ret;
}
