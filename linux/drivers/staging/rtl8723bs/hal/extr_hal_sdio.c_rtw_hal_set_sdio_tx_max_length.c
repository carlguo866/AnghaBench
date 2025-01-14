
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hal_com_data {int* sdio_tx_max_len; } ;
struct adapter {int dummy; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int HAL_DEF_TX_PAGE_SIZE ;
 size_t HI_QUEUE_IDX ;
 size_t LOW_QUEUE_IDX ;
 int MAX_XMITBUF_SZ ;
 size_t MID_QUEUE_IDX ;
 int rtw_hal_get_def_var (struct adapter*,int ,int*) ;

void rtw_hal_set_sdio_tx_max_length(
 struct adapter *padapter, u8 numHQ, u8 numNQ, u8 numLQ, u8 numPubQ
)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 u32 page_size;
 u32 lenHQ, lenNQ, lenLQ;

 rtw_hal_get_def_var(padapter, HAL_DEF_TX_PAGE_SIZE, &page_size);

 lenHQ = ((numHQ + numPubQ) >> 1) * page_size;
 lenNQ = ((numNQ + numPubQ) >> 1) * page_size;
 lenLQ = ((numLQ + numPubQ) >> 1) * page_size;

 pHalData->sdio_tx_max_len[HI_QUEUE_IDX] =
  (lenHQ > MAX_XMITBUF_SZ) ? MAX_XMITBUF_SZ : lenHQ;
 pHalData->sdio_tx_max_len[MID_QUEUE_IDX] =
  (lenNQ > MAX_XMITBUF_SZ) ? MAX_XMITBUF_SZ : lenNQ;
 pHalData->sdio_tx_max_len[LOW_QUEUE_IDX] =
  (lenLQ > MAX_XMITBUF_SZ) ? MAX_XMITBUF_SZ : lenLQ;
}
