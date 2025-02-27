
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned int uint32_t ;
struct iwm_ucode_capabilities {int enabled_capa; } ;
struct iwm_ucode_capa {int api_capa; int api_index; } ;
struct iwm_softc {int sc_dev; } ;


 int IWM_NUM_UCODE_TLV_CAPA ;
 int device_printf (int ,char*,unsigned int) ;
 unsigned int howmany (int ,int) ;
 unsigned int le32toh (int ) ;
 int setbit (int ,int) ;

__attribute__((used)) static int
iwm_set_ucode_capabilities(struct iwm_softc *sc, const uint8_t *data,
      struct iwm_ucode_capabilities *capa)
{
 const struct iwm_ucode_capa *ucode_capa = (const void *)data;
 uint32_t api_index = le32toh(ucode_capa->api_index);
 uint32_t api_flags = le32toh(ucode_capa->api_capa);
 int i;

 if (api_index >= howmany(IWM_NUM_UCODE_TLV_CAPA, 32)) {
  device_printf(sc->sc_dev,
      "capa flags index %d larger than supported by driver\n",
      api_index);

  return 0;
 }

 for (i = 0; i < 32; i++) {
  if (api_flags & (1U << i))
   setbit(capa->enabled_capa, i + 32 * api_index);
 }

 return 0;
}
