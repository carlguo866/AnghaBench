
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int* checksum_table ;

uint16_t ff_svq1_packet_checksum (const uint8_t *data,
                                  const int length, int value)
{
    int i;

    for (i = 0; i < length; i++)
        value = checksum_table[data[i] ^ (value >> 8)] ^ ((value & 0xFF) << 8);

    return value;
}
