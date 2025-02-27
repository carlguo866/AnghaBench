
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flakey_c {unsigned int corrupt_bio_byte; char corrupt_bio_value; } ;
struct bio {scalar_t__ bi_sector; int bi_rw; } ;


 int DMDEBUG (char*,struct bio*,char,int,char,int ,unsigned long long,unsigned int) ;
 scalar_t__ WRITE ;
 unsigned int bio_cur_bytes (struct bio*) ;
 char* bio_data (struct bio*) ;
 scalar_t__ bio_data_dir (struct bio*) ;

__attribute__((used)) static void corrupt_bio_data(struct bio *bio, struct flakey_c *fc)
{
 unsigned bio_bytes = bio_cur_bytes(bio);
 char *data = bio_data(bio);




 if (data && bio_bytes >= fc->corrupt_bio_byte) {
  data[fc->corrupt_bio_byte - 1] = fc->corrupt_bio_value;

  DMDEBUG("Corrupting data bio=%p by writing %u to byte %u "
   "(rw=%c bi_rw=%lu bi_sector=%llu cur_bytes=%u)\n",
   bio, fc->corrupt_bio_value, fc->corrupt_bio_byte,
   (bio_data_dir(bio) == WRITE) ? 'w' : 'r',
   bio->bi_rw, (unsigned long long)bio->bi_sector, bio_bytes);
 }
}
