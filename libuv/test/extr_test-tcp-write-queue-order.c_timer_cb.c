
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_handle_t ;


 int client ;
 int close_cb ;
 int incoming ;
 int server ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void timer_cb(uv_timer_t* handle) {
  uv_close((uv_handle_t*) &client, close_cb);
  uv_close((uv_handle_t*) &server, close_cb);
  uv_close((uv_handle_t*) &incoming, close_cb);
}
