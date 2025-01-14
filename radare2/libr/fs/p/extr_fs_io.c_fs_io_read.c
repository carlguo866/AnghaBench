
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char ut8 ;
typedef int ut64 ;
struct TYPE_8__ {char* data; TYPE_2__* root; } ;
struct TYPE_6__ {char* (* system ) (int ,char*) ;int io; } ;
struct TYPE_7__ {TYPE_1__ iob; } ;
typedef TYPE_2__ RFSRoot ;
typedef TYPE_3__ RFSFile ;


 int R_FREE (char*) ;
 scalar_t__ calloc (int,int) ;
 int eprintf (char*,...) ;
 char* r_fs_file_copy_abs_path (TYPE_3__*) ;
 int r_hex_str2bin (char*,char*) ;
 char* r_str_newf (char*,char*) ;
 int strlen (char*) ;
 char* stub1 (int ,char*) ;

__attribute__((used)) static bool fs_io_read(RFSFile *file, ut64 addr, int len) {
 RFSRoot *root = file->root;
 char *abs_path = r_fs_file_copy_abs_path (file);
 if (!abs_path) {
  return 0;
 }
 char *cmd = r_str_newf ("mg %s", abs_path);
 R_FREE (abs_path);
 if (!cmd) {
  return 0;
 }
 char *res = root->iob.system (root->iob.io, cmd);
 R_FREE (cmd);
 if (res) {
  int encoded_size = strlen (res);
  if (encoded_size != len * 2) {
   eprintf ("Unexpected size (%d vs %d)\n", encoded_size, len*2);
   R_FREE (res);
   return 0;
  }
  file->data = (ut8 *) calloc (1, len);
  if (!file->data) {
   R_FREE (res);
   return 0;
  }
  int ret = r_hex_str2bin (res, file->data);
  if (ret != len) {
   eprintf ("Inconsistent read\n");
   R_FREE (file->data);
  }
  R_FREE (res);
 }
 return 0;
}
