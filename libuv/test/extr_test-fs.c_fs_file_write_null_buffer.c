
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ result; } ;


 int ASSERT (int) ;
 int O_CREAT ;
 int O_WRONLY ;
 int S_IRUSR ;
 int S_IWUSR ;
 TYPE_1__ close_req ;
 int iov ;
 int loop ;
 TYPE_1__ open_req1 ;
 int unlink (char*) ;
 int uv_buf_init (int *,int ) ;
 int uv_default_loop () ;
 int uv_fs_close (int *,TYPE_1__*,scalar_t__,int *) ;
 int uv_fs_open (int *,TYPE_1__*,char*,int,int,int *) ;
 int uv_fs_req_cleanup (TYPE_1__*) ;
 int uv_fs_write (int *,TYPE_1__*,scalar_t__,int *,int,int,int *) ;
 TYPE_1__ write_req ;

__attribute__((used)) static void fs_file_write_null_buffer(int add_flags) {
  int r;


  unlink("test_file");

  loop = uv_default_loop();

  r = uv_fs_open(((void*)0), &open_req1, "test_file",
      O_WRONLY | O_CREAT | add_flags, S_IWUSR | S_IRUSR, ((void*)0));
  ASSERT(r >= 0);
  ASSERT(open_req1.result >= 0);
  uv_fs_req_cleanup(&open_req1);

  iov = uv_buf_init(((void*)0), 0);
  r = uv_fs_write(((void*)0), &write_req, open_req1.result, &iov, 1, -1, ((void*)0));
  ASSERT(r == 0);
  ASSERT(write_req.result == 0);
  uv_fs_req_cleanup(&write_req);

  r = uv_fs_close(((void*)0), &close_req, open_req1.result, ((void*)0));
  ASSERT(r == 0);
  ASSERT(close_req.result == 0);
  uv_fs_req_cleanup(&close_req);

  unlink("test_file");
}
