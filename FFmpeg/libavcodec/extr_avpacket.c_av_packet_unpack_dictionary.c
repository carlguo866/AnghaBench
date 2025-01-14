
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int AVDictionary ;


 int AVERROR_INVALIDDATA ;
 int av_dict_set (int **,scalar_t__ const*,scalar_t__ const*,int ) ;
 int strlen (scalar_t__ const*) ;

int av_packet_unpack_dictionary(const uint8_t *data, int size, AVDictionary **dict)
{
    const uint8_t *end;
    int ret = 0;

    if (!dict || !data || !size)
        return ret;
    end = data + size;
    if (size && end[-1])
        return AVERROR_INVALIDDATA;
    while (data < end) {
        const uint8_t *key = data;
        const uint8_t *val = data + strlen(key) + 1;

        if (val >= end || !*key)
            return AVERROR_INVALIDDATA;

        ret = av_dict_set(dict, key, val, 0);
        if (ret < 0)
            break;
        data = val + strlen(val) + 1;
    }

    return ret;
}
