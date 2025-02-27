
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int * brd_info; scalar_t__ num_of_brd_entries; } ;
struct firmware {size_t size; void* data; } ;


 int kfree (int *) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int ) ;
 int wil_dbg_fw (struct wil6210_priv*,char*,char const*,size_t) ;
 int wil_err_fw (struct wil6210_priv*,char*,char const*,int) ;
 int wil_fw_process (struct wil6210_priv*,void const*,int,int) ;
 int wil_fw_verify (struct wil6210_priv*,void const*,size_t) ;
 int wil_to_dev (struct wil6210_priv*) ;

int wil_request_firmware(struct wil6210_priv *wil, const char *name,
    bool load)
{
 int rc, rc1;
 const struct firmware *fw;
 size_t sz;
 const void *d;

 rc = request_firmware(&fw, name, wil_to_dev(wil));
 if (rc) {
  wil_err_fw(wil, "Failed to load firmware %s rc %d\n", name, rc);
  return rc;
 }
 wil_dbg_fw(wil, "Loading <%s>, %zu bytes\n", name, fw->size);


 wil->num_of_brd_entries = 0;
 kfree(wil->brd_info);
 wil->brd_info = ((void*)0);

 for (sz = fw->size, d = fw->data; sz; sz -= rc1, d += rc1) {
  rc1 = wil_fw_verify(wil, d, sz);
  if (rc1 < 0) {
   rc = rc1;
   goto out;
  }
  rc = wil_fw_process(wil, d, rc1, load);
  if (rc < 0)
   goto out;
 }

out:
 release_firmware(fw);
 if (rc)
  wil_err_fw(wil, "Loading <%s> failed, rc %d\n", name, rc);
 return rc;
}
