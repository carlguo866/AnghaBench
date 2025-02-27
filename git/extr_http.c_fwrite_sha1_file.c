
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t avail_in; unsigned char* next_out; int avail_out; void* next_in; } ;
struct http_object_request {scalar_t__ zret; TYPE_2__ stream; int c; int localfile; struct active_request_slot* slot; } ;
struct active_request_slot {int http_code; int curl; } ;
typedef scalar_t__ ssize_t ;
typedef int expn ;
struct TYPE_3__ {int (* update_fn ) (int *,unsigned char*,int) ;} ;
typedef scalar_t__ CURLcode ;


 int BUG (char*,int ) ;
 scalar_t__ CURLE_OK ;
 int CURLINFO_HTTP_CODE ;
 scalar_t__ Z_OK ;
 int Z_SYNC_FLUSH ;
 scalar_t__ curl_easy_getinfo (int ,int ,int*) ;
 int curl_easy_strerror (scalar_t__) ;
 scalar_t__ git_inflate (TYPE_2__*,int ) ;
 int stub1 (int *,unsigned char*,int) ;
 TYPE_1__* the_hash_algo ;
 scalar_t__ xwrite (int ,char*,size_t) ;

__attribute__((used)) static size_t fwrite_sha1_file(char *ptr, size_t eltsize, size_t nmemb,
          void *data)
{
 unsigned char expn[4096];
 size_t size = eltsize * nmemb;
 int posn = 0;
 struct http_object_request *freq = data;
 struct active_request_slot *slot = freq->slot;

 if (slot) {
  CURLcode c = curl_easy_getinfo(slot->curl, CURLINFO_HTTP_CODE,
      &slot->http_code);
  if (c != CURLE_OK)
   BUG("curl_easy_getinfo for HTTP code failed: %s",
    curl_easy_strerror(c));
  if (slot->http_code >= 300)
   return nmemb;
 }

 do {
  ssize_t retval = xwrite(freq->localfile,
     (char *) ptr + posn, size - posn);
  if (retval < 0)
   return posn / eltsize;
  posn += retval;
 } while (posn < size);

 freq->stream.avail_in = size;
 freq->stream.next_in = (void *)ptr;
 do {
  freq->stream.next_out = expn;
  freq->stream.avail_out = sizeof(expn);
  freq->zret = git_inflate(&freq->stream, Z_SYNC_FLUSH);
  the_hash_algo->update_fn(&freq->c, expn,
      sizeof(expn) - freq->stream.avail_out);
 } while (freq->stream.avail_in && freq->zret == Z_OK);
 return nmemb;
}
