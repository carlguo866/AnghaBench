
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath9k_hw_capabilities {int gpio_mask; int num_gpio_pins; } ;
struct ath_hw {struct ath9k_hw_capabilities caps; } ;


 int AR7010_GPIO_MASK ;
 int AR7010_NUM_GPIO ;
 int AR9271_GPIO_MASK ;
 int AR9271_NUM_GPIO ;
 int AR9280_GPIO_MASK ;
 int AR9280_NUM_GPIO ;
 int AR9285_GPIO_MASK ;
 int AR9285_NUM_GPIO ;
 int AR9287_GPIO_MASK ;
 int AR9287_NUM_GPIO ;
 int AR9300_GPIO_MASK ;
 int AR9300_NUM_GPIO ;
 int AR9330_GPIO_MASK ;
 int AR9330_NUM_GPIO ;
 int AR9340_GPIO_MASK ;
 int AR9340_NUM_GPIO ;
 int AR9462_GPIO_MASK ;
 int AR9462_NUM_GPIO ;
 int AR9485_GPIO_MASK ;
 int AR9485_NUM_GPIO ;
 int AR9531_GPIO_MASK ;
 int AR9531_NUM_GPIO ;
 int AR9550_GPIO_MASK ;
 int AR9550_NUM_GPIO ;
 int AR9561_GPIO_MASK ;
 int AR9561_NUM_GPIO ;
 int AR9565_GPIO_MASK ;
 int AR9565_NUM_GPIO ;
 int AR9580_GPIO_MASK ;
 int AR9580_NUM_GPIO ;
 scalar_t__ AR_DEVID_7010 (struct ath_hw*) ;
 int AR_GPIO_MASK ;
 int AR_NUM_GPIO ;
 scalar_t__ AR_SREV_9271 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9280 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9285 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9287 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9300 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9330 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9340 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9462 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9485 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9531 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9550 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9561 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9580 (struct ath_hw*) ;

__attribute__((used)) static void ath9k_gpio_cap_init(struct ath_hw *ah)
{
 struct ath9k_hw_capabilities *pCap = &ah->caps;

 if (AR_SREV_9271(ah)) {
  pCap->num_gpio_pins = AR9271_NUM_GPIO;
  pCap->gpio_mask = AR9271_GPIO_MASK;
 } else if (AR_DEVID_7010(ah)) {
  pCap->num_gpio_pins = AR7010_NUM_GPIO;
  pCap->gpio_mask = AR7010_GPIO_MASK;
 } else if (AR_SREV_9287(ah)) {
  pCap->num_gpio_pins = AR9287_NUM_GPIO;
  pCap->gpio_mask = AR9287_GPIO_MASK;
 } else if (AR_SREV_9285(ah)) {
  pCap->num_gpio_pins = AR9285_NUM_GPIO;
  pCap->gpio_mask = AR9285_GPIO_MASK;
 } else if (AR_SREV_9280(ah)) {
  pCap->num_gpio_pins = AR9280_NUM_GPIO;
  pCap->gpio_mask = AR9280_GPIO_MASK;
 } else if (AR_SREV_9300(ah)) {
  pCap->num_gpio_pins = AR9300_NUM_GPIO;
  pCap->gpio_mask = AR9300_GPIO_MASK;
 } else if (AR_SREV_9330(ah)) {
  pCap->num_gpio_pins = AR9330_NUM_GPIO;
  pCap->gpio_mask = AR9330_GPIO_MASK;
 } else if (AR_SREV_9340(ah)) {
  pCap->num_gpio_pins = AR9340_NUM_GPIO;
  pCap->gpio_mask = AR9340_GPIO_MASK;
 } else if (AR_SREV_9462(ah)) {
  pCap->num_gpio_pins = AR9462_NUM_GPIO;
  pCap->gpio_mask = AR9462_GPIO_MASK;
 } else if (AR_SREV_9485(ah)) {
  pCap->num_gpio_pins = AR9485_NUM_GPIO;
  pCap->gpio_mask = AR9485_GPIO_MASK;
 } else if (AR_SREV_9531(ah)) {
  pCap->num_gpio_pins = AR9531_NUM_GPIO;
  pCap->gpio_mask = AR9531_GPIO_MASK;
 } else if (AR_SREV_9550(ah)) {
  pCap->num_gpio_pins = AR9550_NUM_GPIO;
  pCap->gpio_mask = AR9550_GPIO_MASK;
 } else if (AR_SREV_9561(ah)) {
  pCap->num_gpio_pins = AR9561_NUM_GPIO;
  pCap->gpio_mask = AR9561_GPIO_MASK;
 } else if (AR_SREV_9565(ah)) {
  pCap->num_gpio_pins = AR9565_NUM_GPIO;
  pCap->gpio_mask = AR9565_GPIO_MASK;
 } else if (AR_SREV_9580(ah)) {
  pCap->num_gpio_pins = AR9580_NUM_GPIO;
  pCap->gpio_mask = AR9580_GPIO_MASK;
 } else {
  pCap->num_gpio_pins = AR_NUM_GPIO;
  pCap->gpio_mask = AR_GPIO_MASK;
 }
}
