
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;
typedef int ssize_t ;


 int MAX_BID_ENTRY ;
 char* __archive_read_ahead (struct archive_read*,int,int*) ;
 int bid_entry (char const*,int,int,int*) ;
 scalar_t__ bid_keyword_list (char const*,int,int,int ) ;
 int next_line (struct archive_read*,char const**,int*,int*,int*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int
detect_form(struct archive_read *a, int *is_form_d)
{
 const char *p;
 ssize_t avail, ravail;
 ssize_t detected_bytes = 0, len, nl;
 int entry_cnt = 0, multiline = 0;
 int form_D = 0;


 if (is_form_d != ((void*)0))
  *is_form_d = 0;
 p = __archive_read_ahead(a, 1, &avail);
 if (p == ((void*)0))
  return (-1);
 ravail = avail;
 for (;;) {
  len = next_line(a, &p, &avail, &ravail, &nl);


  if (len <= 0 || nl == 0)
   break;
  if (!multiline) {


   while (len > 0 && (*p == ' ' || *p == '\t')) {
    ++p;
    --avail;
    --len;
   }

   if (p[0] == '#' || p[0] == '\n' || p[0] == '\r') {
    p += len;
    avail -= len;
    continue;
   }
  } else {


   if (bid_keyword_list(p, len, 0, 0) <= 0)
    break;
   if (multiline == 1)
    detected_bytes += len;
   if (p[len-nl-1] != '\\') {
    if (multiline == 1 &&
        ++entry_cnt >= MAX_BID_ENTRY)
     break;
    multiline = 0;
   }
   p += len;
   avail -= len;
   continue;
  }
  if (p[0] != '/') {
   int last_is_path, keywords;

   keywords = bid_entry(p, len, nl, &last_is_path);
   if (keywords >= 0) {
    detected_bytes += len;
    if (form_D == 0) {
     if (last_is_path)
      form_D = 1;
     else if (keywords > 0)

      form_D = -1;
    } else if (form_D == 1) {
     if (!last_is_path && keywords > 0)



      break;
    }
    if (!last_is_path && p[len-nl-1] == '\\')

     multiline = 1;
    else {



     if (++entry_cnt >= MAX_BID_ENTRY)
      break;
    }
   } else
    break;
  } else if (len > 4 && strncmp(p, "/set", 4) == 0) {
   if (bid_keyword_list(p+4, len-4, 0, 0) <= 0)
    break;

   if (p[len-nl-1] == '\\')
    multiline = 2;
  } else if (len > 6 && strncmp(p, "/unset", 6) == 0) {
   if (bid_keyword_list(p+6, len-6, 1, 0) <= 0)
    break;

   if (p[len-nl-1] == '\\')
    multiline = 2;
  } else
   break;


  p += len;
  avail -= len;
 }
 if (entry_cnt >= MAX_BID_ENTRY || (entry_cnt > 0 && len == 0)) {
  if (is_form_d != ((void*)0)) {
   if (form_D == 1)
    *is_form_d = 1;
  }
  return (32);
 }

 return (0);
}
