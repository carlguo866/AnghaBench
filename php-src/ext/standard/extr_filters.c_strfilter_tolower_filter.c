
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int php_stream_filter_status_t ;
typedef int php_stream_filter ;
struct TYPE_8__ {scalar_t__ head; } ;
typedef TYPE_1__ php_stream_bucket_brigade ;
struct TYPE_9__ {scalar_t__ buflen; int buf; } ;
typedef TYPE_2__ php_stream_bucket ;
typedef int php_stream ;


 int PSFS_PASS_ON ;
 int lowercase ;
 int php_stream_bucket_append (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* php_stream_bucket_make_writeable (scalar_t__) ;
 int php_strtr (int ,scalar_t__,int ,int ,int) ;
 int uppercase ;

__attribute__((used)) static php_stream_filter_status_t strfilter_tolower_filter(
 php_stream *stream,
 php_stream_filter *thisfilter,
 php_stream_bucket_brigade *buckets_in,
 php_stream_bucket_brigade *buckets_out,
 size_t *bytes_consumed,
 int flags
 )
{
 php_stream_bucket *bucket;
 size_t consumed = 0;

 while (buckets_in->head) {
  bucket = php_stream_bucket_make_writeable(buckets_in->head);

  php_strtr(bucket->buf, bucket->buflen, uppercase, lowercase, 26);
  consumed += bucket->buflen;

  php_stream_bucket_append(buckets_out, bucket);
 }

 if (bytes_consumed) {
  *bytes_consumed = consumed;
 }

 return PSFS_PASS_ON;
}
