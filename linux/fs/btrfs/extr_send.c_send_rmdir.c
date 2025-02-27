
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct send_ctx {TYPE_1__* send_root; } ;
struct fs_path {int start; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {struct btrfs_fs_info* fs_info; } ;


 int BTRFS_SEND_A_PATH ;
 int BTRFS_SEND_C_RMDIR ;
 int TLV_PUT_PATH (struct send_ctx*,int ,struct fs_path*) ;
 int begin_cmd (struct send_ctx*,int ) ;
 int btrfs_debug (struct btrfs_fs_info*,char*,int ) ;
 int send_cmd (struct send_ctx*) ;

__attribute__((used)) static int send_rmdir(struct send_ctx *sctx, struct fs_path *path)
{
 struct btrfs_fs_info *fs_info = sctx->send_root->fs_info;
 int ret;

 btrfs_debug(fs_info, "send_rmdir %s", path->start);

 ret = begin_cmd(sctx, BTRFS_SEND_C_RMDIR);
 if (ret < 0)
  goto out;

 TLV_PUT_PATH(sctx, BTRFS_SEND_A_PATH, path);

 ret = send_cmd(sctx);

tlv_put_failure:
out:
 return ret;
}
