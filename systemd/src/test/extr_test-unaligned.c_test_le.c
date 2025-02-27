
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int assert_se (int) ;
 int * data ;
 scalar_t__ memcmp (int *,int *,int) ;
 int unaligned_read_le16 (int *) ;
 int unaligned_read_le32 (int *) ;
 int unaligned_read_le64 (int *) ;
 int unaligned_write_le16 (int *,int) ;
 int unaligned_write_le32 (int *,int) ;
 int unaligned_write_le64 (int *,int) ;
 int zero (int *) ;

__attribute__((used)) static void test_le(void) {
        uint8_t scratch[16];

        assert_se(unaligned_read_le16(&data[0]) == 0x0100);
        assert_se(unaligned_read_le16(&data[1]) == 0x0201);

        assert_se(unaligned_read_le32(&data[0]) == 0x03020100);
        assert_se(unaligned_read_le32(&data[1]) == 0x04030201);
        assert_se(unaligned_read_le32(&data[2]) == 0x05040302);
        assert_se(unaligned_read_le32(&data[3]) == 0x06050403);

        assert_se(unaligned_read_le64(&data[0]) == 0x0706050403020100);
        assert_se(unaligned_read_le64(&data[1]) == 0x0807060504030201);
        assert_se(unaligned_read_le64(&data[2]) == 0x0908070605040302);
        assert_se(unaligned_read_le64(&data[3]) == 0x0a09080706050403);
        assert_se(unaligned_read_le64(&data[4]) == 0x0b0a090807060504);
        assert_se(unaligned_read_le64(&data[5]) == 0x0c0b0a0908070605);
        assert_se(unaligned_read_le64(&data[6]) == 0x0d0c0b0a09080706);
        assert_se(unaligned_read_le64(&data[7]) == 0x0e0d0c0b0a090807);

        zero(scratch);
        unaligned_write_le16(&scratch[0], 0x0100);
        assert_se(memcmp(&scratch[0], &data[0], sizeof(uint16_t)) == 0);
        zero(scratch);
        unaligned_write_le16(&scratch[1], 0x0201);
        assert_se(memcmp(&scratch[1], &data[1], sizeof(uint16_t)) == 0);

        zero(scratch);
        unaligned_write_le32(&scratch[0], 0x03020100);

        assert_se(memcmp(&scratch[0], &data[0], sizeof(uint32_t)) == 0);
        zero(scratch);
        unaligned_write_le32(&scratch[1], 0x04030201);
        assert_se(memcmp(&scratch[1], &data[1], sizeof(uint32_t)) == 0);
        zero(scratch);
        unaligned_write_le32(&scratch[2], 0x05040302);
        assert_se(memcmp(&scratch[2], &data[2], sizeof(uint32_t)) == 0);
        zero(scratch);
        unaligned_write_le32(&scratch[3], 0x06050403);
        assert_se(memcmp(&scratch[3], &data[3], sizeof(uint32_t)) == 0);

        zero(scratch);
        unaligned_write_le64(&scratch[0], 0x0706050403020100);
        assert_se(memcmp(&scratch[0], &data[0], sizeof(uint64_t)) == 0);
        zero(scratch);
        unaligned_write_le64(&scratch[1], 0x0807060504030201);
        assert_se(memcmp(&scratch[1], &data[1], sizeof(uint64_t)) == 0);
        zero(scratch);
        unaligned_write_le64(&scratch[2], 0x0908070605040302);
        assert_se(memcmp(&scratch[2], &data[2], sizeof(uint64_t)) == 0);
        zero(scratch);
        unaligned_write_le64(&scratch[3], 0x0a09080706050403);
        assert_se(memcmp(&scratch[3], &data[3], sizeof(uint64_t)) == 0);
        zero(scratch);
        unaligned_write_le64(&scratch[4], 0x0B0A090807060504);
        assert_se(memcmp(&scratch[4], &data[4], sizeof(uint64_t)) == 0);
        zero(scratch);
        unaligned_write_le64(&scratch[5], 0x0c0b0a0908070605);
        assert_se(memcmp(&scratch[5], &data[5], sizeof(uint64_t)) == 0);
        zero(scratch);
        unaligned_write_le64(&scratch[6], 0x0d0c0b0a09080706);
        assert_se(memcmp(&scratch[6], &data[6], sizeof(uint64_t)) == 0);
        zero(scratch);
        unaligned_write_le64(&scratch[7], 0x0e0d0c0b0a090807);
        assert_se(memcmp(&scratch[7], &data[7], sizeof(uint64_t)) == 0);
}
