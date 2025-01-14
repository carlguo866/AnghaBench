
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fs_type; scalar_t__ result; } ;
typedef TYPE_1__ uv_fs_t ;


 int ASSERT (int) ;
 scalar_t__ UV_FS_CLOSEDIR ;
 TYPE_1__ closedir_req ;
 int empty_closedir_cb_count ;
 int uv_fs_req_cleanup (TYPE_1__*) ;

__attribute__((used)) static void empty_closedir_cb(uv_fs_t* req) {
  ASSERT(req == &closedir_req);
  ASSERT(req->fs_type == UV_FS_CLOSEDIR);
  ASSERT(req->result == 0);
  ++empty_closedir_cb_count;
  uv_fs_req_cleanup(req);
}
