
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int file_flags; int * new_pathw; } ;
struct TYPE_10__ {TYPE_1__ info; } ;
struct TYPE_11__ {int * pathw; } ;
struct TYPE_12__ {TYPE_2__ fs; TYPE_3__ file; } ;
typedef TYPE_4__ uv_fs_t ;
typedef int WCHAR ;


 scalar_t__ CreateSymbolicLinkW (int *,int *,int) ;
 int ERROR_INVALID_PARAMETER ;
 int GetLastError () ;
 int SET_REQ_RESULT (TYPE_4__*,int ) ;
 int SET_REQ_WIN32_ERROR (TYPE_4__*,int) ;
 int SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE ;
 int SYMBOLIC_LINK_FLAG_DIRECTORY ;
 int UV_FS_SYMLINK_DIR ;
 int UV_FS_SYMLINK_JUNCTION ;
 int fs__create_junction (TYPE_4__*,int *,int *) ;
 int uv__file_symlink_usermode_flag ;

__attribute__((used)) static void fs__symlink(uv_fs_t* req) {
  WCHAR* pathw;
  WCHAR* new_pathw;
  int flags;
  int err;

  pathw = req->file.pathw;
  new_pathw = req->fs.info.new_pathw;

  if (req->fs.info.file_flags & UV_FS_SYMLINK_JUNCTION) {
    fs__create_junction(req, pathw, new_pathw);
    return;
  }

  if (req->fs.info.file_flags & UV_FS_SYMLINK_DIR)
    flags = SYMBOLIC_LINK_FLAG_DIRECTORY | uv__file_symlink_usermode_flag;
  else
    flags = uv__file_symlink_usermode_flag;

  if (CreateSymbolicLinkW(new_pathw, pathw, flags)) {
    SET_REQ_RESULT(req, 0);
    return;
  }




  err = GetLastError();
  if (err == ERROR_INVALID_PARAMETER &&
      flags & SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE) {



    uv__file_symlink_usermode_flag = 0;
    fs__symlink(req);
  } else {
    SET_REQ_WIN32_ERROR(req, err);
  }
}
