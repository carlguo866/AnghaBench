
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;


 int AE_IFLNK ;
 int archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_gid (struct archive_entry*) ;
 int archive_entry_gname (struct archive_entry*) ;
 int * archive_entry_hardlink (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_symlink (struct archive_entry*) ;
 int archive_entry_uid (struct archive_entry*) ;
 int archive_entry_uname (struct archive_entry*) ;
 int assert (int ) ;
 int assertEqualInt (int,int) ;
 int assertEqualString (int ,char*) ;

__attribute__((used)) static void verify2(struct archive_entry *ae)
{
 assertEqualInt(archive_entry_filetype(ae), AE_IFLNK);
 assertEqualInt(archive_entry_mode(ae) & 0777, 0755);
 assertEqualInt(archive_entry_uid(ae), 1000);
 assertEqualInt(archive_entry_gid(ae), 1000);
 assertEqualString(archive_entry_uname(ae), "tim");
 assertEqualString(archive_entry_gname(ae), "tim");
 assertEqualString(archive_entry_pathname(ae), "symlink");
 assertEqualString(archive_entry_symlink(ae), "file");
 assert(archive_entry_hardlink(ae) == ((void*)0));
 assertEqualInt(archive_entry_mtime(ae), 1184389185);
}
