
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int H264_NAL_SEI ;
 int av_log (int *,int ,char*) ;

__attribute__((used)) static int find_sei_end(AVCodecContext *avctx,
                        uint8_t *nal_data,
                        size_t nal_size,
                        uint8_t **sei_end)
{
    int nal_type;
    size_t sei_payload_size = 0;
    int sei_payload_type = 0;
    *sei_end = ((void*)0);
    uint8_t *nal_start = nal_data;

    if (!nal_size)
        return 0;

    nal_type = *nal_data & 0x1F;
    if (nal_type != H264_NAL_SEI)
        return 0;

    nal_data++;
    nal_size--;

    if (nal_data[nal_size - 1] == 0x80)
        nal_size--;

    while (nal_size > 0 && *nal_data > 0) {
        do{
            sei_payload_type += *nal_data;
            nal_data++;
            nal_size--;
        } while (nal_size > 0 && *nal_data == 0xFF);

        if (!nal_size) {
            av_log(avctx, AV_LOG_ERROR, "Unexpected end of SEI NAL Unit parsing type.\n");
            return AVERROR_INVALIDDATA;
        }

        do{
            sei_payload_size += *nal_data;
            nal_data++;
            nal_size--;
        } while (nal_size > 0 && *nal_data == 0xFF);

        if (nal_size < sei_payload_size) {
            av_log(avctx, AV_LOG_ERROR, "Unexpected end of SEI NAL Unit parsing size.\n");
            return AVERROR_INVALIDDATA;
        }

        nal_data += sei_payload_size;
        nal_size -= sei_payload_size;
    }

    *sei_end = nal_data;

    return nal_data - nal_start + 1;
}
