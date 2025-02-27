
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_13__ {int bDescriptorType; } ;
typedef TYPE_10__ usb_conf_desc_t ;
typedef size_t uint8_t ;
struct TYPE_24__ {int wValue; scalar_t__ wLength; } ;
struct TYPE_23__ {int wTotalLength; } ;
struct TYPE_22__ {TYPE_6__* desc; } ;
struct TYPE_21__ {int wTotalLength; } ;
struct TYPE_20__ {size_t bNumConfigurations; int bLength; } ;
struct TYPE_19__ {TYPE_3__* desc; } ;
struct TYPE_18__ {int wTotalLength; } ;
struct TYPE_17__ {size_t bNumConfigurations; int bLength; } ;
struct TYPE_16__ {int bLength; } ;
struct TYPE_15__ {TYPE_8__* conf_bos; TYPE_7__* conf_lsfs; TYPE_5__* confdev_lsfs; TYPE_4__* conf_hs; TYPE_2__* confdev_hs; TYPE_1__* qualifier; } ;
struct TYPE_14__ {scalar_t__ payload_size; TYPE_9__ req; scalar_t__ payload; } ;
 int le16_to_cpu (int ) ;
 TYPE_12__ udc_config ;
 int udc_req_std_dev_get_str_desc () ;
 TYPE_11__ udd_g_ctrlreq ;
 int udd_is_high_speed () ;
 int udd_set_setup_payload (size_t*,int ) ;

__attribute__((used)) static bool udc_req_std_dev_get_descriptor(void) {
    uint8_t conf_num;

    conf_num = udd_g_ctrlreq.req.wValue & 0xff;


    switch ((uint8_t)(udd_g_ctrlreq.req.wValue >> 8)) {
        case 131:






            {
                udd_set_setup_payload((uint8_t *)udc_config.confdev_lsfs, udc_config.confdev_lsfs->bLength);
            }
            break;

        case 132:
            {

                if (conf_num >= udc_config.confdev_lsfs->bNumConfigurations) {
                    return 0;
                }
                udd_set_setup_payload((uint8_t *)udc_config.conf_lsfs[conf_num].desc, le16_to_cpu(udc_config.conf_lsfs[conf_num].desc->wTotalLength));
            }
            ((usb_conf_desc_t *)udd_g_ctrlreq.payload)->bDescriptorType = 132;
            break;
        case 133:

            if (udc_config.conf_bos == ((void*)0)) {
                return 0;
            }
            udd_set_setup_payload((uint8_t *)udc_config.conf_bos, udc_config.conf_bos->wTotalLength);
            break;

        case 128:

            if (!udc_req_std_dev_get_str_desc()) {
                return 0;
            }
            break;

        default:

            return 0;
    }

    if (udd_g_ctrlreq.req.wLength < udd_g_ctrlreq.payload_size) {
        udd_g_ctrlreq.payload_size = udd_g_ctrlreq.req.wLength;
    }
    return 1;
}
