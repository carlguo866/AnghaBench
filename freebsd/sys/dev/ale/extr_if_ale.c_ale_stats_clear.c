
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smb {int tx_mcast_bytes; int tx_frames; int rx_pkts_filtered; int rx_frames; } ;
struct ale_softc {int dummy; } ;


 scalar_t__ ALE_RX_MIB_BASE ;
 scalar_t__ ALE_TX_MIB_BASE ;
 int CSR_READ_4 (struct ale_softc*,scalar_t__) ;

__attribute__((used)) static void
ale_stats_clear(struct ale_softc *sc)
{
 struct smb sb;
 uint32_t *reg;
 int i;

 for (reg = &sb.rx_frames, i = 0; reg <= &sb.rx_pkts_filtered; reg++) {
  CSR_READ_4(sc, ALE_RX_MIB_BASE + i);
  i += sizeof(uint32_t);
 }

 for (reg = &sb.tx_frames, i = 0; reg <= &sb.tx_mcast_bytes; reg++) {
  CSR_READ_4(sc, ALE_TX_MIB_BASE + i);
  i += sizeof(uint32_t);
 }
}
