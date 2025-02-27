
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct page {int i_mapping; } ;
struct inode {int i_mapping; } ;
typedef int pgoff_t ;
typedef scalar_t__ ntfschar ;
struct TYPE_3__ {scalar_t__* upcase; int upcase_len; struct super_block* sb; } ;
typedef TYPE_1__ ntfs_volume ;
typedef int loff_t ;


 int FILE_UpCase ;
 scalar_t__ IS_ERR (struct page*) ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int UCHAR_T_SIZE_BITS ;
 scalar_t__* default_upcase ;
 void* default_upcase_len ;
 int i_size_read (struct page*) ;
 int iput (struct page*) ;
 scalar_t__ is_bad_inode (struct page*) ;
 int memcpy (char*,int ,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ntfs_debug (char*,...) ;
 int ntfs_error (struct super_block*,char*) ;
 int ntfs_free (scalar_t__*) ;
 struct page* ntfs_iget (struct super_block*,int ) ;
 int ntfs_lock ;
 scalar_t__ ntfs_malloc_nofs (int) ;
 struct page* ntfs_map_page (int ,int) ;
 int ntfs_nr_upcase_users ;
 int ntfs_unmap_page (struct page*) ;
 int page_address (struct page*) ;

__attribute__((used)) static bool load_and_init_upcase(ntfs_volume *vol)
{
 loff_t i_size;
 struct super_block *sb = vol->sb;
 struct inode *ino;
 struct page *page;
 pgoff_t index, max_index;
 unsigned int size;
 int i, max;

 ntfs_debug("Entering.");

 ino = ntfs_iget(sb, FILE_UpCase);
 if (IS_ERR(ino) || is_bad_inode(ino)) {
  if (!IS_ERR(ino))
   iput(ino);
  goto upcase_failed;
 }




 i_size = i_size_read(ino);
 if (!i_size || i_size & (sizeof(ntfschar) - 1) ||
   i_size > 64ULL * 1024 * sizeof(ntfschar))
  goto iput_upcase_failed;
 vol->upcase = (ntfschar*)ntfs_malloc_nofs(i_size);
 if (!vol->upcase)
  goto iput_upcase_failed;
 index = 0;
 max_index = i_size >> PAGE_SHIFT;
 size = PAGE_SIZE;
 while (index < max_index) {

read_partial_upcase_page:
  page = ntfs_map_page(ino->i_mapping, index);
  if (IS_ERR(page))
   goto iput_upcase_failed;
  memcpy((char*)vol->upcase + (index++ << PAGE_SHIFT),
    page_address(page), size);
  ntfs_unmap_page(page);
 };
 if (size == PAGE_SIZE) {
  size = i_size & ~PAGE_MASK;
  if (size)
   goto read_partial_upcase_page;
 }
 vol->upcase_len = i_size >> UCHAR_T_SIZE_BITS;
 ntfs_debug("Read %llu bytes from $UpCase (expected %zu bytes).",
   i_size, 64 * 1024 * sizeof(ntfschar));
 iput(ino);
 mutex_lock(&ntfs_lock);
 if (!default_upcase) {
  ntfs_debug("Using volume specified $UpCase since default is "
    "not present.");
  mutex_unlock(&ntfs_lock);
  return 1;
 }
 max = default_upcase_len;
 if (max > vol->upcase_len)
  max = vol->upcase_len;
 for (i = 0; i < max; i++)
  if (vol->upcase[i] != default_upcase[i])
   break;
 if (i == max) {
  ntfs_free(vol->upcase);
  vol->upcase = default_upcase;
  vol->upcase_len = max;
  ntfs_nr_upcase_users++;
  mutex_unlock(&ntfs_lock);
  ntfs_debug("Volume specified $UpCase matches default. Using "
    "default.");
  return 1;
 }
 mutex_unlock(&ntfs_lock);
 ntfs_debug("Using volume specified $UpCase since it does not match "
   "the default.");
 return 1;
iput_upcase_failed:
 iput(ino);
 ntfs_free(vol->upcase);
 vol->upcase = ((void*)0);
upcase_failed:
 mutex_lock(&ntfs_lock);
 if (default_upcase) {
  vol->upcase = default_upcase;
  vol->upcase_len = default_upcase_len;
  ntfs_nr_upcase_users++;
  mutex_unlock(&ntfs_lock);
  ntfs_error(sb, "Failed to load $UpCase from the volume. Using "
    "default.");
  return 1;
 }
 mutex_unlock(&ntfs_lock);
 ntfs_error(sb, "Failed to initialize upcase table.");
 return 0;
}
