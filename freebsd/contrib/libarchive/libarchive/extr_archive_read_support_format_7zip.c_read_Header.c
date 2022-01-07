
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct archive_read {TYPE_3__* format; } ;
struct _7zip_entry {unsigned char* utf16name; int name_len; int attr; int flg; int mode; int ssIndex; int folderIndex; int * wname; } ;
struct TYPE_5__ {scalar_t__ numFolders; struct _7z_folder* folders; } ;
struct TYPE_4__ {size_t unpack_streams; scalar_t__* digestsDefined; } ;
struct _7z_stream_info {TYPE_2__ ci; TYPE_1__ ss; } ;
struct _7zip {scalar_t__ numFiles; scalar_t__ header_bytes_remaining; unsigned char* entry_names; struct _7zip_entry* entries; struct _7z_stream_info si; } ;
struct _7z_header_info {scalar_t__* emptyStreamBools; scalar_t__* emptyFileBools; scalar_t__* antiBools; scalar_t__* attrBools; } ;
struct _7z_folder {scalar_t__ numUnpackStreams; } ;
struct TYPE_6__ {scalar_t__ data; } ;


 int AE_IFDIR ;
 int AE_IFMT ;
 int AE_IFREG ;
 int CRC32_IS_SET ;
 int HAS_STREAM ;
 size_t UBUFF_SIZE ;
 scalar_t__ UMAX_ENTRY ;
 int __LA_FALLTHROUGH ;
 int archive_le32dec (unsigned char const*) ;
 void* calloc (size_t,int) ;
 unsigned char* header_bytes (struct archive_read*,size_t) ;


 unsigned char const kArchiveProperties ;





 unsigned char const kEnd ;
 unsigned char const kFilesInfo ;
 unsigned char const kHeader ;

 unsigned char const kMainStreamsInfo ;

 unsigned char* malloc (size_t) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int memset (scalar_t__*,int,size_t) ;
 scalar_t__ parse_7zip_uint64 (struct archive_read*,scalar_t__*) ;
 int read_Bools (struct archive_read*,scalar_t__*,size_t) ;
 scalar_t__ read_StreamsInfo (struct archive_read*,struct _7z_stream_info*) ;
 int read_Times (struct archive_read*,struct _7z_header_info*,int) ;

__attribute__((used)) static int
read_Header(struct archive_read *a, struct _7z_header_info *h,
    int check_header_id)
{
 struct _7zip *zip = (struct _7zip *)a->format->data;
 const unsigned char *p;
 struct _7z_folder *folders;
 struct _7z_stream_info *si = &(zip->si);
 struct _7zip_entry *entries;
 uint32_t folderIndex, indexInFolder;
 unsigned i;
 int eindex, empty_streams, sindex;

 if (check_header_id) {



  if ((p = header_bytes(a, 1)) == ((void*)0))
   return (-1);
  if (*p != kHeader)
   return (-1);
 }




 if ((p = header_bytes(a, 1)) == ((void*)0))
  return (-1);
 if (*p == kArchiveProperties) {
  for (;;) {
   uint64_t size;
   if ((p = header_bytes(a, 1)) == ((void*)0))
    return (-1);
   if (*p == 0)
    break;
   if (parse_7zip_uint64(a, &size) < 0)
    return (-1);
  }
  if ((p = header_bytes(a, 1)) == ((void*)0))
   return (-1);
 }




 if (*p == kMainStreamsInfo) {
  if (read_StreamsInfo(a, &(zip->si)) < 0)
   return (-1);
  if ((p = header_bytes(a, 1)) == ((void*)0))
   return (-1);
 }
 if (*p == kEnd)
  return (0);




 if (*p != kFilesInfo)
  return (-1);

 if (parse_7zip_uint64(a, &(zip->numFiles)) < 0)
  return (-1);
 if (UMAX_ENTRY < zip->numFiles)
  return (-1);

 zip->entries = calloc((size_t)zip->numFiles, sizeof(*zip->entries));
 if (zip->entries == ((void*)0))
  return (-1);
 entries = zip->entries;

 empty_streams = 0;
 for (;;) {
  int type;
  uint64_t size;
  size_t ll;

  if ((p = header_bytes(a, 1)) == ((void*)0))
   return (-1);
  type = *p;
  if (type == kEnd)
   break;

  if (parse_7zip_uint64(a, &size) < 0)
   return (-1);
  if (zip->header_bytes_remaining < size)
   return (-1);
  ll = (size_t)size;

  switch (type) {
  case 130:
   if (h->emptyStreamBools != ((void*)0))
    return (-1);
   h->emptyStreamBools = calloc((size_t)zip->numFiles,
       sizeof(*h->emptyStreamBools));
   if (h->emptyStreamBools == ((void*)0))
    return (-1);
   if (read_Bools(
       a, h->emptyStreamBools, (size_t)zip->numFiles) < 0)
    return (-1);
   empty_streams = 0;
   for (i = 0; i < zip->numFiles; i++) {
    if (h->emptyStreamBools[i])
     empty_streams++;
   }
   break;
  case 131:
   if (empty_streams <= 0) {

    if (header_bytes(a, ll) == ((void*)0))
     return (-1);
    break;
   }
   if (h->emptyFileBools != ((void*)0))
    return (-1);
   h->emptyFileBools = calloc(empty_streams,
       sizeof(*h->emptyFileBools));
   if (h->emptyFileBools == ((void*)0))
    return (-1);
   if (read_Bools(a, h->emptyFileBools, empty_streams) < 0)
    return (-1);
   break;
  case 135:
   if (empty_streams <= 0) {

    if (header_bytes(a, ll) == ((void*)0))
     return (-1);
    break;
   }
   if (h->antiBools != ((void*)0))
    return (-1);
   h->antiBools = calloc(empty_streams,
       sizeof(*h->antiBools));
   if (h->antiBools == ((void*)0))
    return (-1);
   if (read_Bools(a, h->antiBools, empty_streams) < 0)
    return (-1);
   break;
  case 133:
  case 136:
  case 129:
   if (read_Times(a, h, type) < 0)
    return (-1);
   break;
  case 128:
  {
   unsigned char *np;
   size_t nl, nb;


   if ((p = header_bytes(a, 1)) == ((void*)0))
    return (-1);
   ll--;

   if ((ll & 1) || ll < zip->numFiles * 4)
    return (-1);

   if (zip->entry_names != ((void*)0))
    return (-1);
   zip->entry_names = malloc(ll);
   if (zip->entry_names == ((void*)0))
    return (-1);
   np = zip->entry_names;
   nb = ll;






   while (nb) {
    size_t b;
    if (nb > UBUFF_SIZE)
     b = UBUFF_SIZE;
    else
     b = nb;
    if ((p = header_bytes(a, b)) == ((void*)0))
     return (-1);
    memcpy(np, p, b);
    np += b;
    nb -= b;
   }
   np = zip->entry_names;
   nl = ll;

   for (i = 0; i < zip->numFiles; i++) {
    entries[i].utf16name = np;





    while (nl >= 2 && (np[0] || np[1])) {
     np += 2;
     nl -= 2;
    }
    if (nl < 2)
     return (-1);
    entries[i].name_len = np - entries[i].utf16name;
    np += 2;
    nl -= 2;
   }
   break;
  }
  case 134:
  {
   int allAreDefined;

   if ((p = header_bytes(a, 2)) == ((void*)0))
    return (-1);
   allAreDefined = *p;
   if (h->attrBools != ((void*)0))
    return (-1);
   h->attrBools = calloc((size_t)zip->numFiles,
       sizeof(*h->attrBools));
   if (h->attrBools == ((void*)0))
    return (-1);
   if (allAreDefined)
    memset(h->attrBools, 1, (size_t)zip->numFiles);
   else {
    if (read_Bools(a, h->attrBools,
          (size_t)zip->numFiles) < 0)
     return (-1);
   }
   for (i = 0; i < zip->numFiles; i++) {
    if (h->attrBools[i]) {
     if ((p = header_bytes(a, 4)) == ((void*)0))
      return (-1);
     entries[i].attr = archive_le32dec(p);
    }
   }
   break;
  }
  case 132:
   if (ll == 0)
    break;
   __LA_FALLTHROUGH;
  default:
   if (header_bytes(a, ll) == ((void*)0))
    return (-1);
   break;
  }
 }




 folders = si->ci.folders;
 eindex = sindex = 0;
 folderIndex = indexInFolder = 0;
 for (i = 0; i < zip->numFiles; i++) {
  if (h->emptyStreamBools == ((void*)0) || h->emptyStreamBools[i] == 0)
   entries[i].flg |= HAS_STREAM;

  entries[i].mode = entries[i].attr >> 16;
  if (entries[i].flg & HAS_STREAM) {
   if ((size_t)sindex >= si->ss.unpack_streams)
    return (-1);
   if (entries[i].mode == 0)
    entries[i].mode = AE_IFREG | 0666;
   if (si->ss.digestsDefined[sindex])
    entries[i].flg |= CRC32_IS_SET;
   entries[i].ssIndex = sindex;
   sindex++;
  } else {
   int dir;
   if (h->emptyFileBools == ((void*)0))
    dir = 1;
   else {
    if (h->emptyFileBools[eindex])
     dir = 0;
    else
     dir = 1;
    eindex++;
   }
   if (entries[i].mode == 0) {
    if (dir)
     entries[i].mode = AE_IFDIR | 0777;
    else
     entries[i].mode = AE_IFREG | 0666;
   } else if (dir &&
       (entries[i].mode & AE_IFMT) != AE_IFDIR) {
    entries[i].mode &= ~AE_IFMT;
    entries[i].mode |= AE_IFDIR;
   }
   if ((entries[i].mode & AE_IFMT) == AE_IFDIR &&
       entries[i].name_len >= 2 &&
       (entries[i].utf16name[entries[i].name_len-2] != '/' ||
        entries[i].utf16name[entries[i].name_len-1] != 0)) {
    entries[i].utf16name[entries[i].name_len] = '/';
    entries[i].utf16name[entries[i].name_len+1] = 0;
    entries[i].name_len += 2;
   }
   entries[i].ssIndex = -1;
  }
  if (entries[i].attr & 0x01)
   entries[i].mode &= ~0222;

  if ((entries[i].flg & HAS_STREAM) == 0 && indexInFolder == 0) {




   entries[i].folderIndex = -1;
   continue;
  }
  if (indexInFolder == 0) {
   for (;;) {
    if (folderIndex >= si->ci.numFolders)
     return (-1);
    if (folders[folderIndex].numUnpackStreams)
     break;
    folderIndex++;
   }
  }
  entries[i].folderIndex = folderIndex;
  if ((entries[i].flg & HAS_STREAM) == 0)
   continue;
  indexInFolder++;
  if (indexInFolder >= folders[folderIndex].numUnpackStreams) {
   folderIndex++;
   indexInFolder = 0;
  }
 }

 return (0);
}
