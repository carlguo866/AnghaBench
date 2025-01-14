
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wps_parse_attr {scalar_t__* msg_type; int dev_name_len; scalar_t__ dev_name; int serial_number_len; scalar_t__ serial_number; int model_number_len; scalar_t__ model_number; int model_name_len; scalar_t__ model_name; int manufacturer_len; scalar_t__ manufacturer; scalar_t__ dev_password_id; int const* primary_dev_type; int const* uuid_e; scalar_t__ config_methods; } ;
struct wps_er_sta {int m1_received; void* dev_name; void* serial_number; void* model_number; void* model_name; void* manufacturer; void* dev_passwd_id; int pri_dev_type; int uuid; void* config_methods; int list; struct wps_er_ap* ap; int addr; } ;
struct wps_er_ap {TYPE_1__* er; int sta; } ;
struct TYPE_2__ {int wps; } ;


 int ETH_ALEN ;
 void* WPA_GET_BE16 (scalar_t__) ;
 int WPS_EV_ER_ENROLLEE_ADD ;
 scalar_t__ WPS_M1 ;
 int WPS_UUID_LEN ;
 int dl_list_add (int *,int *) ;
 void* dup_binstr (scalar_t__,int ) ;
 int eloop_cancel_timeout (int ,struct wps_er_sta*,int *) ;
 int eloop_register_timeout (int,int ,int ,struct wps_er_sta*,int *) ;
 int os_free (void*) ;
 int os_memcpy (int ,int const*,int) ;
 struct wps_er_sta* os_zalloc (int) ;
 int wps_er_sta_event (int ,struct wps_er_sta*,int ) ;
 struct wps_er_sta* wps_er_sta_get (struct wps_er_ap*,int const*,int *) ;
 int wps_er_sta_timeout ;

__attribute__((used)) static struct wps_er_sta * wps_er_add_sta_data(struct wps_er_ap *ap,
            const u8 *addr,
            struct wps_parse_attr *attr,
            int probe_req)
{
 struct wps_er_sta *sta = wps_er_sta_get(ap, addr, ((void*)0));
 int new_sta = 0;
 int m1;

 m1 = !probe_req && attr->msg_type && *attr->msg_type == WPS_M1;

 if (sta == ((void*)0)) {





  if (!probe_req && !m1)
   return ((void*)0);

  sta = os_zalloc(sizeof(*sta));
  if (sta == ((void*)0))
   return ((void*)0);
  os_memcpy(sta->addr, addr, ETH_ALEN);
  sta->ap = ap;
  dl_list_add(&ap->sta, &sta->list);
  new_sta = 1;
 }

 if (m1)
  sta->m1_received = 1;

 if (attr->config_methods && (!probe_req || !sta->m1_received))
  sta->config_methods = WPA_GET_BE16(attr->config_methods);
 if (attr->uuid_e && (!probe_req || !sta->m1_received))
  os_memcpy(sta->uuid, attr->uuid_e, WPS_UUID_LEN);
 if (attr->primary_dev_type && (!probe_req || !sta->m1_received))
  os_memcpy(sta->pri_dev_type, attr->primary_dev_type, 8);
 if (attr->dev_password_id && (!probe_req || !sta->m1_received))
  sta->dev_passwd_id = WPA_GET_BE16(attr->dev_password_id);

 if (attr->manufacturer) {
  os_free(sta->manufacturer);
  sta->manufacturer = dup_binstr(attr->manufacturer,
            attr->manufacturer_len);
 }

 if (attr->model_name) {
  os_free(sta->model_name);
  sta->model_name = dup_binstr(attr->model_name,
          attr->model_name_len);
 }

 if (attr->model_number) {
  os_free(sta->model_number);
  sta->model_number = dup_binstr(attr->model_number,
            attr->model_number_len);
 }

 if (attr->serial_number) {
  os_free(sta->serial_number);
  sta->serial_number = dup_binstr(attr->serial_number,
      attr->serial_number_len);
 }

 if (attr->dev_name) {
  os_free(sta->dev_name);
  sta->dev_name = dup_binstr(attr->dev_name, attr->dev_name_len);
 }

 eloop_cancel_timeout(wps_er_sta_timeout, sta, ((void*)0));
 eloop_register_timeout(300, 0, wps_er_sta_timeout, sta, ((void*)0));

 if (m1 || new_sta)
  wps_er_sta_event(ap->er->wps, sta, WPS_EV_ER_ENROLLEE_ADD);

 return sta;
}
