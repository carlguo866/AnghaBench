
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_privsep_data {scalar_t__ priv_socket; scalar_t__ cmd_socket; struct wpa_driver_privsep_data* own_cmd_path; struct wpa_driver_privsep_data* own_socket_path; } ;


 int PRIVSEP_CMD_UNREGISTER ;
 int close (scalar_t__) ;
 int eloop_unregister_read_sock (scalar_t__) ;
 int os_free (struct wpa_driver_privsep_data*) ;
 int unlink (struct wpa_driver_privsep_data*) ;
 int wpa_priv_reg_cmd (struct wpa_driver_privsep_data*,int ) ;

__attribute__((used)) static void wpa_driver_privsep_deinit(void *priv)
{
 struct wpa_driver_privsep_data *drv = priv;

 if (drv->priv_socket >= 0) {
  wpa_priv_reg_cmd(drv, PRIVSEP_CMD_UNREGISTER);
  eloop_unregister_read_sock(drv->priv_socket);
  close(drv->priv_socket);
 }

 if (drv->own_socket_path) {
  unlink(drv->own_socket_path);
  os_free(drv->own_socket_path);
 }

 if (drv->cmd_socket >= 0) {
  eloop_unregister_read_sock(drv->cmd_socket);
  close(drv->cmd_socket);
 }

 if (drv->own_cmd_path) {
  unlink(drv->own_cmd_path);
  os_free(drv->own_cmd_path);
 }

 os_free(drv);
}
