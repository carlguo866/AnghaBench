
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int B5 ;
 int B6 ;
 int C6 ;
 scalar_t__ IS_LED_ON (int ,int ) ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int led_set_user (int ) ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

void led_set_kb(uint8_t usb_led) {

 if (IS_LED_ON(usb_led, USB_LED_NUM_LOCK)) {

  writePinHigh(C6);
    } else {

     writePinLow(C6);
    }
 if (IS_LED_ON(usb_led, USB_LED_CAPS_LOCK)) {

  writePinHigh(B6);
    } else {

  writePinLow(B6);
    }
 if (IS_LED_ON(usb_led, USB_LED_SCROLL_LOCK)) {

     writePinHigh(B5);
    } else {

  writePinLow(B5);
    }
 led_set_user(usb_led);
}
