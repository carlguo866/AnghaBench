
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_MATCH_CTIME ;
 int ARCHIVE_MATCH_MTIME ;
 int ARCHIVE_MATCH_OLDER ;
 int archive_entry_copy_pathname (struct archive_entry*,char*) ;
 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_set_ctime (struct archive_entry*,int,int) ;
 int archive_entry_set_mtime (struct archive_entry*,int,int) ;
 int archive_match_excluded (struct archive*,struct archive_entry*) ;
 int archive_match_free (struct archive*) ;
 int archive_match_include_time (struct archive*,int,int,int ) ;
 struct archive* archive_match_new () ;
 int archive_match_time_excluded (struct archive*,struct archive_entry*) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int failure (char*) ;

__attribute__((used)) static void
test_older_time(void)
{
 struct archive_entry *ae;
 struct archive *m;

 if (!assert((m = archive_match_new()) != ((void*)0)))
  return;
 if (!assert((ae = archive_entry_new()) != ((void*)0))) {
  archive_match_free(m);
  return;
 }

 assertEqualIntA(m, 0, archive_match_include_time(m,
     ARCHIVE_MATCH_MTIME | ARCHIVE_MATCH_CTIME |
     ARCHIVE_MATCH_OLDER, 7880, 0));

 archive_entry_copy_pathname(ae, "file1");
 archive_entry_set_mtime(ae, 7880, 0);
 archive_entry_set_ctime(ae, 7880, 0);
 failure("Both Its mtime and ctime should be excluded");
 assertEqualInt(1, archive_match_time_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));
 archive_entry_set_mtime(ae, 7879, 999);
 archive_entry_set_ctime(ae, 7879, 999);
 failure("Both Its mtime and ctime should not be excluded");
 assertEqualInt(0, archive_match_time_excluded(m, ae));
 assertEqualInt(0, archive_match_excluded(m, ae));

 archive_entry_set_mtime(ae, 7881, 0);
 archive_entry_set_ctime(ae, 7881, 0);
 failure("Both Its mtime and ctime should be excluded");
 assertEqualInt(1, archive_match_time_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));

 archive_entry_set_mtime(ae, 7880, 1);
 archive_entry_set_ctime(ae, 7879, 0);
 failure("Its mtime should be excluded");
 assertEqualInt(1, archive_match_time_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));

 archive_entry_set_mtime(ae, 7879, 0);
 archive_entry_set_ctime(ae, 7880, 1);
 failure("Its ctime should be excluded");
 assertEqualInt(1, archive_match_time_excluded(m, ae));
 assertEqualInt(1, archive_match_excluded(m, ae));


 archive_entry_free(ae);
 archive_match_free(m);
}
