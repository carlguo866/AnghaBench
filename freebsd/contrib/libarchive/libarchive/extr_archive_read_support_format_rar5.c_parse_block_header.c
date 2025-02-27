
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct compressed_block_header {int block_cksum; scalar_t__ block_flags_u8; } ;
struct archive_read {int archive; } ;
typedef int ssize_t ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int archive_le16dec (int const*) ;
 int archive_le32dec (int const*) ;
 int archive_set_error (int *,int ,char*,int,...) ;
 int bf_byte_count (struct compressed_block_header*) ;
 int memcpy (struct compressed_block_header*,int const*,int) ;

__attribute__((used)) static int parse_block_header(struct archive_read* a, const uint8_t* p,
    ssize_t* block_size, struct compressed_block_header* hdr)
{
 memcpy(hdr, p, sizeof(struct compressed_block_header));

 if(bf_byte_count(hdr) > 2) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Unsupported block header size (was %d, max is 2)",
      bf_byte_count(hdr));
  return ARCHIVE_FATAL;
 }



 *block_size = 0;
 switch(bf_byte_count(hdr)) {

  case 0:
   *block_size = *(const uint8_t*) &p[2];
   break;


  case 1:
   *block_size = archive_le16dec(&p[2]);
   break;


  case 2:
   *block_size = archive_le32dec(&p[2]);
   *block_size &= 0x00FFFFFF;
   break;




  default:
   return ARCHIVE_FATAL;
 }



 uint8_t calculated_cksum = 0x5A
     ^ (uint8_t) hdr->block_flags_u8
     ^ (uint8_t) *block_size
     ^ (uint8_t) (*block_size >> 8)
     ^ (uint8_t) (*block_size >> 16);

 if(calculated_cksum != hdr->block_cksum) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Block checksum error: got 0x%x, expected 0x%x",
      hdr->block_cksum, calculated_cksum);

  return ARCHIVE_FATAL;
 }

 return ARCHIVE_OK;
}
