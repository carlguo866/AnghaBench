
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dir3_data_hdr {int dummy; } ;
struct xfs_dir2_data_hdr {int dummy; } ;
struct xfs_dir2_data_entry {int dummy; } ;



__attribute__((used)) static struct xfs_dir2_data_entry *
xfs_dir3_data_dot_entry_p(
 struct xfs_dir2_data_hdr *hdr)
{
 return (struct xfs_dir2_data_entry *)
  ((char *)hdr + sizeof(struct xfs_dir3_data_hdr));
}
