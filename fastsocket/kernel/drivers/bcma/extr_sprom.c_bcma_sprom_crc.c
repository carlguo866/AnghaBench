
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int SSB_SPROMSIZE_WORDS_R4 ;
 int bcma_crc8 (int,int const) ;

__attribute__((used)) static u8 bcma_sprom_crc(const u16 *sprom)
{
 int word;
 u8 crc = 0xFF;

 for (word = 0; word < SSB_SPROMSIZE_WORDS_R4 - 1; word++) {
  crc = bcma_crc8(crc, sprom[word] & 0x00FF);
  crc = bcma_crc8(crc, (sprom[word] & 0xFF00) >> 8);
 }
 crc = bcma_crc8(crc, sprom[SSB_SPROMSIZE_WORDS_R4 - 1] & 0x00FF);
 crc ^= 0xFF;

 return crc;
}
