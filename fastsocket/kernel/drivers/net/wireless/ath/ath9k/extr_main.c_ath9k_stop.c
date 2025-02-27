
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_hw {struct ath_softc* priv; } ;
struct TYPE_2__ {int * frag; } ;
struct ath_softc {int ps_idle; int mutex; int sc_flags; int sc_pcu_lock; TYPE_1__ rx; int bcon_tasklet; int intr_tq; int irq; int rx_poll_timer; struct ath_hw* sc_ah; } ;
struct ath_hw {scalar_t__ led_pin; int caldata; scalar_t__ curchan; int imask; } ;
struct ath_common {int dummy; } ;


 int ANY ;
 int ATH9K_INT_GLOBAL ;
 int CONFIG ;
 int SC_OP_INVALID ;
 scalar_t__ ath9k_cmn_get_curchannel (struct ieee80211_hw*,struct ath_hw*) ;
 int ath9k_hw_cfg_gpio_input (struct ath_hw*,scalar_t__) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_configpcipowersave (struct ath_hw*,int) ;
 int ath9k_hw_disable_interrupts (struct ath_hw*) ;
 int ath9k_hw_phy_disable (struct ath_hw*) ;
 int ath9k_hw_reset (struct ath_hw*,scalar_t__,int ,int) ;
 int ath9k_hw_set_gpio (struct ath_hw*,scalar_t__,int) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath_cancel_work (struct ath_softc*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 int ath_prepare_reset (struct ath_softc*) ;
 int del_timer_sync (int *) ;
 int dev_kfree_skb_any (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_irq (int ) ;
 int tasklet_kill (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ath9k_stop(struct ieee80211_hw *hw)
{
 struct ath_softc *sc = hw->priv;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 bool prev_idle;

 mutex_lock(&sc->mutex);

 ath_cancel_work(sc);
 del_timer_sync(&sc->rx_poll_timer);

 if (test_bit(SC_OP_INVALID, &sc->sc_flags)) {
  ath_dbg(common, ANY, "Device not present\n");
  mutex_unlock(&sc->mutex);
  return;
 }


 ath9k_ps_wakeup(sc);

 spin_lock_bh(&sc->sc_pcu_lock);


 ah->imask &= ~ATH9K_INT_GLOBAL;



 ath9k_hw_disable_interrupts(ah);

 spin_unlock_bh(&sc->sc_pcu_lock);



 synchronize_irq(sc->irq);
 tasklet_kill(&sc->intr_tq);
 tasklet_kill(&sc->bcon_tasklet);

 prev_idle = sc->ps_idle;
 sc->ps_idle = 1;

 spin_lock_bh(&sc->sc_pcu_lock);

 if (ah->led_pin >= 0) {
  ath9k_hw_set_gpio(ah, ah->led_pin, 1);
  ath9k_hw_cfg_gpio_input(ah, ah->led_pin);
 }

 ath_prepare_reset(sc);

 if (sc->rx.frag) {
  dev_kfree_skb_any(sc->rx.frag);
  sc->rx.frag = ((void*)0);
 }

 if (!ah->curchan)
  ah->curchan = ath9k_cmn_get_curchannel(hw, ah);

 ath9k_hw_reset(ah, ah->curchan, ah->caldata, 0);
 ath9k_hw_phy_disable(ah);

 ath9k_hw_configpcipowersave(ah, 1);

 spin_unlock_bh(&sc->sc_pcu_lock);

 ath9k_ps_restore(sc);

 set_bit(SC_OP_INVALID, &sc->sc_flags);
 sc->ps_idle = prev_idle;

 mutex_unlock(&sc->mutex);

 ath_dbg(common, CONFIG, "Driver halt\n");
}
