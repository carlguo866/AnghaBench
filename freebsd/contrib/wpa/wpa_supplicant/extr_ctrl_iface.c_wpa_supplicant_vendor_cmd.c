
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {int dummy; } ;


 int EINVAL ;
 int MSG_DEBUG ;
 scalar_t__ hexstr2bin (char*,int *,size_t) ;
 int isblank (unsigned char) ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;
 size_t os_strlen (char*) ;
 unsigned int strtoul (char*,char**,int) ;
 int wpa_drv_vendor_cmd (struct wpa_supplicant*,unsigned int,unsigned int,int *,size_t,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 int wpa_snprintf_hex (char*,size_t,int ,int ) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head_u8 (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static int wpa_supplicant_vendor_cmd(struct wpa_supplicant *wpa_s, char *cmd,
         char *buf, size_t buflen)
{
 int ret;
 char *pos;
 u8 *data = ((void*)0);
 unsigned int vendor_id, subcmd;
 struct wpabuf *reply;
 size_t data_len = 0;


 vendor_id = strtoul(cmd, &pos, 16);
 if (!isblank((unsigned char) *pos))
  return -EINVAL;

 subcmd = strtoul(pos, &pos, 10);

 if (*pos != '\0') {
  if (!isblank((unsigned char) *pos++))
   return -EINVAL;
  data_len = os_strlen(pos);
 }

 if (data_len) {
  data_len /= 2;
  data = os_malloc(data_len);
  if (!data)
   return -1;

  if (hexstr2bin(pos, data, data_len)) {
   wpa_printf(MSG_DEBUG,
       "Vendor command: wrong parameter format");
   os_free(data);
   return -EINVAL;
  }
 }

 reply = wpabuf_alloc((buflen - 1) / 2);
 if (!reply) {
  os_free(data);
  return -1;
 }

 ret = wpa_drv_vendor_cmd(wpa_s, vendor_id, subcmd, data, data_len,
     reply);

 if (ret == 0)
  ret = wpa_snprintf_hex(buf, buflen, wpabuf_head_u8(reply),
           wpabuf_len(reply));

 wpabuf_free(reply);
 os_free(data);

 return ret;
}
