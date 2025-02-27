
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int dll_buf ;
struct TYPE_5__ {scalar_t__ lpBaseOfDll; int fUnicode; int lpImageName; } ;
struct TYPE_4__ {TYPE_2__ LoadDll; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ LOAD_DLL_DEBUG_INFO ;
typedef scalar_t__ DWORD ;


 int MAX_PATH ;
 TYPE_3__ current_event ;
 int current_process_handle ;
 char* get_image_name (int ,int ,int ) ;
 int psapi_get_dll_name (scalar_t__,char*) ;
 int register_loaded_dll (char*,scalar_t__) ;

__attribute__((used)) static int
handle_load_dll (void *dummy)
{
  LOAD_DLL_DEBUG_INFO *event = &current_event.u.LoadDll;
  char dll_buf[MAX_PATH + 1];
  char *dll_name = ((void*)0);
  char *p;

  dll_buf[0] = dll_buf[sizeof (dll_buf) - 1] = '\0';

  if (!psapi_get_dll_name ((DWORD) (event->lpBaseOfDll), dll_buf))
    dll_buf[0] = dll_buf[sizeof (dll_buf) - 1] = '\0';

  dll_name = dll_buf;

  if (*dll_name == '\0')
    dll_name = get_image_name (current_process_handle, event->lpImageName, event->fUnicode);
  if (!dll_name)
    return 1;

  register_loaded_dll (dll_name, (DWORD) event->lpBaseOfDll + 0x1000);

  return 1;
}
