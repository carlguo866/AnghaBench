
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int B1 ;
 int B2 ;
 int B3 ;
 scalar_t__ IS_LED_ON (int ,int ) ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int led_set_user (int ) ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

void led_set_kb(uint8_t usb_led) {
 if (IS_LED_ON(usb_led, USB_LED_NUM_LOCK)) {
        writePinLow(B1);
    } else {
        writePinHigh(B1);
    }

    if (IS_LED_ON(usb_led, USB_LED_CAPS_LOCK)) {
        writePinLow(B2);
    } else {
        writePinHigh(B2);
    }

    if (IS_LED_ON(usb_led, USB_LED_SCROLL_LOCK)) {
        writePinLow(B3);
    } else {
        writePinHigh(B3);
    }
 led_set_user(usb_led);
}
