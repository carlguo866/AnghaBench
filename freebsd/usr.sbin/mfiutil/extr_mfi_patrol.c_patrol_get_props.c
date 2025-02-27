
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_pr_properties {int dummy; } ;


 int MFI_DCMD_PR_GET_PROPERTIES ;
 int errno ;
 scalar_t__ mfi_dcmd_command (int,int ,struct mfi_pr_properties*,int,int *,int ,int *) ;
 int warn (char*) ;

__attribute__((used)) static int
patrol_get_props(int fd, struct mfi_pr_properties *prop)
{
 int error;

 if (mfi_dcmd_command(fd, MFI_DCMD_PR_GET_PROPERTIES, prop,
     sizeof(*prop), ((void*)0), 0, ((void*)0)) < 0) {
  error = errno;
  warn("Failed to get patrol read properties");
  return (error);
 }
 return (0);
}
