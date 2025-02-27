
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct iwl_ucode_capabilities {int _api; } ;
struct iwl_ucode_api {int api_flags; int api_index; } ;
struct iwl_drv {int dummy; } ;


 int BIT (int) ;
 int DIV_ROUND_UP (int ,int) ;
 int IWL_WARN (struct iwl_drv*,char*,int) ;
 int NUM_IWL_UCODE_TLV_API ;
 int __set_bit (int,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void iwl_set_ucode_api_flags(struct iwl_drv *drv, const u8 *data,
        struct iwl_ucode_capabilities *capa)
{
 const struct iwl_ucode_api *ucode_api = (void *)data;
 u32 api_index = le32_to_cpu(ucode_api->api_index);
 u32 api_flags = le32_to_cpu(ucode_api->api_flags);
 int i;

 if (api_index >= DIV_ROUND_UP(NUM_IWL_UCODE_TLV_API, 32)) {
  IWL_WARN(drv,
    "api flags index %d larger than supported by driver\n",
    api_index);
  return;
 }

 for (i = 0; i < 32; i++) {
  if (api_flags & BIT(i))
   __set_bit(i + 32 * api_index, capa->_api);
 }
}
