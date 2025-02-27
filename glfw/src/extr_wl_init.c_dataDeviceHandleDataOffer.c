
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl_data_offer {int dummy; } ;
struct wl_data_device {int dummy; } ;
struct TYPE_3__ {struct wl_data_offer* dataOffer; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;


 TYPE_2__ _glfw ;
 int dataOfferListener ;
 int wl_data_offer_add_listener (struct wl_data_offer*,int *,int *) ;
 int wl_data_offer_destroy (struct wl_data_offer*) ;

__attribute__((used)) static void dataDeviceHandleDataOffer(void* data,
                                      struct wl_data_device* dataDevice,
                                      struct wl_data_offer* id)
{
    if (_glfw.wl.dataOffer)
        wl_data_offer_destroy(_glfw.wl.dataOffer);

    _glfw.wl.dataOffer = id;
    wl_data_offer_add_listener(_glfw.wl.dataOffer, &dataOfferListener, ((void*)0));
}
