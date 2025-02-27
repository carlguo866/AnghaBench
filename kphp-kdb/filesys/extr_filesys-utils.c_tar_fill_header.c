
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {unsigned long long st_mode; unsigned long long st_uid; unsigned long long st_gid; scalar_t__ st_mtime; scalar_t__ st_size; } ;
struct passwd {int pw_name; } ;
struct group {int gr_name; } ;
typedef int gzFile ;


 scalar_t__ S_ISDIR (int) ;
 scalar_t__ S_ISLNK (int) ;
 struct group* getgrgid (int) ;
 struct passwd* getpwuid (int) ;
 int memcpy (char*,char const* const,int) ;
 int memset (char*,int ,int) ;
 int sprintf (char*,char*,unsigned long long) ;
 char* strchr (char const* const,char) ;
 int strcpy (char*,char const* const) ;
 int strlen (char const* const) ;
 int strncpy (char*,int ,int) ;
 int tar_fill_longlink_header (char*,int,char) ;
 int tar_fill_ustar_magic (char*) ;
 int tar_write_long_link_header (int ,char*,int,char const* const) ;
 int vkprintf (int,char*,char const* const) ;

__attribute__((used)) static int tar_fill_header (gzFile f, char b[512], struct stat *S, const char *const filename) {
  memset (b, 0, 512);
  int l = strlen (filename);
  const int MAX_L = 99;
  int longname = 0;
  if (l > MAX_L) {
    char *p = strchr (filename + l - MAX_L, '/');
    if (p == ((void*)0)) {
      longname = 1;
    } else {
      int o = p - filename;
      if (o > 155) {
        longname = 1;
      } else {
        strcpy (b, filename + o + 1);
        memcpy (b + 345, filename, o);
      }
    }
  } else {
    strcpy (b, filename);
  }

  if (longname) {
    vkprintf (2, "too long full filename: %s\n", filename);
    l = strlen (filename);
    tar_fill_longlink_header (b, l, 'L');
    int r = tar_write_long_link_header (f, b, l, filename);
    if (r < 0) {
      return r;
    }
    memset (b, 0, 512);
    memcpy (b, filename, 100);
  }

  sprintf (b + 100, "%07o", S->st_mode);
  sprintf (b + 108, "%07o", S->st_uid);
  sprintf (b + 116, "%07o", S->st_gid);
  sprintf (b + 124, "%011llo", (unsigned long long) S->st_size);
  sprintf (b + 136, "%011llo", (unsigned long long) S->st_mtime);
  tar_fill_ustar_magic (b);

  b[156] = '0';
  if (S_ISLNK (S->st_mode)) {
    b[156] = '2';
  } else if (S_ISDIR (S->st_mode)) {
    b[156] = '5';
  }

  struct passwd *P = getpwuid (S->st_uid);
  strncpy (b + 265, P->pw_name, 32);
  struct group *G = getgrgid (S->st_gid);
  strncpy (b + 297, G->gr_name, 32);
  return 0;
}
