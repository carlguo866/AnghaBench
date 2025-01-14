
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gengetopt_args_info {scalar_t__ align_rootfs_given; int pad_orig; scalar_t__ pad_given; scalar_t__ kernel_file_has_header_given; int reserved2_orig; scalar_t__ reserved2_given; int inactive_orig; scalar_t__ inactive_given; int second_image_flag_orig; scalar_t__ second_image_flag_given; int rsa_signature_orig; scalar_t__ rsa_signature_given; scalar_t__ root_first_given; int info2_orig; scalar_t__ info2_given; int altinfo_orig; scalar_t__ altinfo_given; int info1_orig; scalar_t__ info1_given; int layoutver_orig; scalar_t__ layoutver_given; int entry_orig; scalar_t__ entry_given; int load_addr_orig; scalar_t__ load_addr_given; int block_size_orig; scalar_t__ block_size_given; int signature2_orig; scalar_t__ signature2_given; int signature_orig; scalar_t__ signature_given; int tag_version_orig; scalar_t__ tag_version_given; int image_offset_orig; scalar_t__ image_offset_given; int flash_start_orig; scalar_t__ flash_start_given; int chipid_orig; scalar_t__ chipid_given; int boardid_orig; scalar_t__ boardid_given; int cfe_orig; scalar_t__ cfe_given; int output_orig; scalar_t__ output_given; int rootfs_orig; scalar_t__ rootfs_given; int kernel_orig; scalar_t__ kernel_given; scalar_t__ version_given; scalar_t__ help_given; } ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 char* IMAGETAG_CMDLINE_PACKAGE ;
 int fprintf (int ,char*,char*) ;
 int imagetag_cmdline_inactive_values ;
 int imagetag_cmdline_second_image_flag_values ;
 int stderr ;
 int write_into_file (int *,char*,int ,int ) ;

int
imagetag_cmdline_dump(FILE *outfile, struct gengetopt_args_info *args_info)
{
  int i = 0;

  if (!outfile)
    {
      fprintf (stderr, "%s: cannot dump options to stream\n", IMAGETAG_CMDLINE_PACKAGE);
      return EXIT_FAILURE;
    }

  if (args_info->help_given)
    write_into_file(outfile, "help", 0, 0 );
  if (args_info->version_given)
    write_into_file(outfile, "version", 0, 0 );
  if (args_info->kernel_given)
    write_into_file(outfile, "kernel", args_info->kernel_orig, 0);
  if (args_info->rootfs_given)
    write_into_file(outfile, "rootfs", args_info->rootfs_orig, 0);
  if (args_info->output_given)
    write_into_file(outfile, "output", args_info->output_orig, 0);
  if (args_info->cfe_given)
    write_into_file(outfile, "cfe", args_info->cfe_orig, 0);
  if (args_info->boardid_given)
    write_into_file(outfile, "boardid", args_info->boardid_orig, 0);
  if (args_info->chipid_given)
    write_into_file(outfile, "chipid", args_info->chipid_orig, 0);
  if (args_info->flash_start_given)
    write_into_file(outfile, "flash-start", args_info->flash_start_orig, 0);
  if (args_info->image_offset_given)
    write_into_file(outfile, "image-offset", args_info->image_offset_orig, 0);
  if (args_info->tag_version_given)
    write_into_file(outfile, "tag-version", args_info->tag_version_orig, 0);
  if (args_info->signature_given)
    write_into_file(outfile, "signature", args_info->signature_orig, 0);
  if (args_info->signature2_given)
    write_into_file(outfile, "signature2", args_info->signature2_orig, 0);
  if (args_info->block_size_given)
    write_into_file(outfile, "block-size", args_info->block_size_orig, 0);
  if (args_info->load_addr_given)
    write_into_file(outfile, "load-addr", args_info->load_addr_orig, 0);
  if (args_info->entry_given)
    write_into_file(outfile, "entry", args_info->entry_orig, 0);
  if (args_info->layoutver_given)
    write_into_file(outfile, "layoutver", args_info->layoutver_orig, 0);
  if (args_info->info1_given)
    write_into_file(outfile, "info1", args_info->info1_orig, 0);
  if (args_info->altinfo_given)
    write_into_file(outfile, "altinfo", args_info->altinfo_orig, 0);
  if (args_info->info2_given)
    write_into_file(outfile, "info2", args_info->info2_orig, 0);
  if (args_info->root_first_given)
    write_into_file(outfile, "root-first", 0, 0 );
  if (args_info->rsa_signature_given)
    write_into_file(outfile, "rsa-signature", args_info->rsa_signature_orig, 0);
  if (args_info->second_image_flag_given)
    write_into_file(outfile, "second-image-flag", args_info->second_image_flag_orig, imagetag_cmdline_second_image_flag_values);
  if (args_info->inactive_given)
    write_into_file(outfile, "inactive", args_info->inactive_orig, imagetag_cmdline_inactive_values);
  if (args_info->reserved2_given)
    write_into_file(outfile, "reserved2", args_info->reserved2_orig, 0);
  if (args_info->kernel_file_has_header_given)
    write_into_file(outfile, "kernel-file-has-header", 0, 0 );
  if (args_info->pad_given)
    write_into_file(outfile, "pad", args_info->pad_orig, 0);
  if (args_info->align_rootfs_given)
    write_into_file(outfile, "align-rootfs", 0, 0 );


  i = EXIT_SUCCESS;
  return i;
}
