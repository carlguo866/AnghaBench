
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int* bit_input; int* bit_output; } ;
struct TYPE_4__ {TYPE_3__* desc; } ;
struct uaudio_terminal_node {TYPE_2__ usr; TYPE_1__ u; } ;
struct uaudio_search_result {int dummy; } ;
struct TYPE_6__ {scalar_t__ bDescriptorSubtype; } ;


 scalar_t__ UDESCSUB_AC_OUTPUT ;

__attribute__((used)) static void
uaudio_mixer_find_outputs_sub(struct uaudio_terminal_node *root, uint8_t id,
    uint8_t n_id, struct uaudio_search_result *info)
{
 struct uaudio_terminal_node *iot = (root + id);
 uint8_t j;

 j = n_id;
 do {
  if ((j != id) && ((root + j)->u.desc) &&
      ((root + j)->u.desc->bDescriptorSubtype == UDESCSUB_AC_OUTPUT)) {







   if ((root + j)->usr.bit_input[id / 8] & (1 << (id % 8))) {
    iot->usr.bit_output[j / 8] |= (1 << (j % 8));
   }
  }
 } while (j--);
}
