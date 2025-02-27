
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct archive_read {TYPE_1__* format; } ;
struct _7zip {int header_bytes_remaining; } ;
struct _7z_folder {int numCoders; int numBindPairs; int numPackedStreams; unsigned int* packedStreams; int numInStreams; int numOutStreams; TYPE_3__* bindPairs; TYPE_2__* coders; } ;
struct TYPE_6__ {int inIndex; int outIndex; } ;
struct TYPE_5__ {int numInStreams; int numOutStreams; int propertiesSize; int * properties; int codec; } ;
struct TYPE_4__ {scalar_t__ data; } ;


 int UMAX_ENTRY ;
 void* calloc (size_t,int) ;
 int decode_codec_id (unsigned char const*,size_t) ;
 unsigned char* header_bytes (struct archive_read*,size_t) ;
 int * malloc (size_t) ;
 int memcpy (int *,unsigned char const*,size_t) ;
 int memset (struct _7z_folder*,int ,int) ;
 scalar_t__ parse_7zip_uint64 (struct archive_read*,int*) ;

__attribute__((used)) static int
read_Folder(struct archive_read *a, struct _7z_folder *f)
{
 struct _7zip *zip = (struct _7zip *)a->format->data;
 const unsigned char *p;
 uint64_t numInStreamsTotal = 0;
 uint64_t numOutStreamsTotal = 0;
 unsigned i;

 memset(f, 0, sizeof(*f));




 if (parse_7zip_uint64(a, &(f->numCoders)) < 0)
  return (-1);
 if (f->numCoders > 4)

  return (-1);

 f->coders = calloc((size_t)f->numCoders, sizeof(*f->coders));
 if (f->coders == ((void*)0))
  return (-1);
 for (i = 0; i< f->numCoders; i++) {
  size_t codec_size;
  int simple, attr;

  if ((p = header_bytes(a, 1)) == ((void*)0))
   return (-1);
  codec_size = *p & 0xf;
  simple = (*p & 0x10)?0:1;
  attr = *p & 0x20;
  if (*p & 0x80)
   return (-1);




  if ((p = header_bytes(a, codec_size)) == ((void*)0))
   return (-1);

  f->coders[i].codec = decode_codec_id(p, codec_size);

  if (simple) {
   f->coders[i].numInStreams = 1;
   f->coders[i].numOutStreams = 1;
  } else {
   if (parse_7zip_uint64(
       a, &(f->coders[i].numInStreams)) < 0)
    return (-1);
   if (UMAX_ENTRY < f->coders[i].numInStreams)
    return (-1);
   if (parse_7zip_uint64(
       a, &(f->coders[i].numOutStreams)) < 0)
    return (-1);
   if (UMAX_ENTRY < f->coders[i].numOutStreams)
    return (-1);
  }

  if (attr) {
   if (parse_7zip_uint64(
       a, &(f->coders[i].propertiesSize)) < 0)
    return (-1);
   if ((p = header_bytes(
       a, (size_t)f->coders[i].propertiesSize)) == ((void*)0))
    return (-1);
   f->coders[i].properties =
       malloc((size_t)f->coders[i].propertiesSize);
   if (f->coders[i].properties == ((void*)0))
    return (-1);
   memcpy(f->coders[i].properties, p,
       (size_t)f->coders[i].propertiesSize);
  }

  numInStreamsTotal += f->coders[i].numInStreams;
  numOutStreamsTotal += f->coders[i].numOutStreams;
 }

 if (numOutStreamsTotal == 0 ||
     numInStreamsTotal < numOutStreamsTotal-1)
  return (-1);

 f->numBindPairs = numOutStreamsTotal - 1;
 if (zip->header_bytes_remaining < f->numBindPairs)
   return (-1);
 if (f->numBindPairs > 0) {
  f->bindPairs =
   calloc((size_t)f->numBindPairs, sizeof(*f->bindPairs));
  if (f->bindPairs == ((void*)0))
   return (-1);
 } else
  f->bindPairs = ((void*)0);
 for (i = 0; i < f->numBindPairs; i++) {
  if (parse_7zip_uint64(a, &(f->bindPairs[i].inIndex)) < 0)
   return (-1);
  if (UMAX_ENTRY < f->bindPairs[i].inIndex)
   return (-1);
  if (parse_7zip_uint64(a, &(f->bindPairs[i].outIndex)) < 0)
   return (-1);
  if (UMAX_ENTRY < f->bindPairs[i].outIndex)
   return (-1);
 }

 f->numPackedStreams = numInStreamsTotal - f->numBindPairs;
 f->packedStreams =
     calloc((size_t)f->numPackedStreams, sizeof(*f->packedStreams));
 if (f->packedStreams == ((void*)0))
  return (-1);
 if (f->numPackedStreams == 1) {
  for (i = 0; i < numInStreamsTotal; i++) {
   unsigned j;
   for (j = 0; j < f->numBindPairs; j++) {
    if (f->bindPairs[j].inIndex == i)
     break;
   }
   if (j == f->numBindPairs)
    break;
  }
  if (i == numInStreamsTotal)
   return (-1);
  f->packedStreams[0] = i;
 } else {
  for (i = 0; i < f->numPackedStreams; i++) {
   if (parse_7zip_uint64(a, &(f->packedStreams[i])) < 0)
    return (-1);
   if (UMAX_ENTRY < f->packedStreams[i])
    return (-1);
  }
 }
 f->numInStreams = numInStreamsTotal;
 f->numOutStreams = numOutStreamsTotal;

 return (0);
}
