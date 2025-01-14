
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct child_blackbox {int failures; } ;
typedef int blackbox ;
struct TYPE_4__ {TYPE_1__* Peb; } ;
struct TYPE_3__ {int BeingDebugged; } ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int DebugActiveProcess (int ) ;
 int FALSE ;
 int GetCurrentProcess () ;
 int GetLastError () ;
 TYPE_2__* NtCurrentTeb () ;
 int OpenProcess (int ,int ,int ) ;
 int PROCESS_QUERY_INFORMATION ;
 int TRUE ;
 int child_failures ;
 int child_ok (int,char*,int) ;
 int pCheckRemoteDebuggerPresent (int ,int*) ;
 int pDebugActiveProcessStop (int ) ;
 int pIsDebuggerPresent () ;
 int save_blackbox (char const*,struct child_blackbox*,int) ;
 int sscanf (char*,char*,int *) ;

__attribute__((used)) static void doChild(int argc, char **argv)
{
    struct child_blackbox blackbox;
    const char *blackbox_file;
    HANDLE parent;
    DWORD ppid;
    BOOL debug;
    BOOL ret;

    blackbox_file = argv[4];
    sscanf(argv[3], "%08x", &ppid);

    parent = OpenProcess(PROCESS_QUERY_INFORMATION, FALSE, ppid);
    child_ok(!!parent, "OpenProcess failed, last error %#x.\n", GetLastError());

    ret = pCheckRemoteDebuggerPresent(parent, &debug);
    child_ok(ret, "CheckRemoteDebuggerPresent failed, last error %#x.\n", GetLastError());
    child_ok(!debug, "Expected debug == 0, got %#x.\n", debug);

    ret = DebugActiveProcess(ppid);
    child_ok(ret, "DebugActiveProcess failed, last error %#x.\n", GetLastError());

    ret = pCheckRemoteDebuggerPresent(parent, &debug);
    child_ok(ret, "CheckRemoteDebuggerPresent failed, last error %#x.\n", GetLastError());
    child_ok(debug, "Expected debug != 0, got %#x.\n", debug);

    ret = pDebugActiveProcessStop(ppid);
    child_ok(ret, "DebugActiveProcessStop failed, last error %#x.\n", GetLastError());

    ret = pCheckRemoteDebuggerPresent(parent, &debug);
    child_ok(ret, "CheckRemoteDebuggerPresent failed, last error %#x.\n", GetLastError());
    child_ok(!debug, "Expected debug == 0, got %#x.\n", debug);

    ret = CloseHandle(parent);
    child_ok(ret, "CloseHandle failed, last error %#x.\n", GetLastError());

    ret = pIsDebuggerPresent();
    child_ok(ret, "Expected ret != 0, got %#x.\n", ret);
    ret = pCheckRemoteDebuggerPresent(GetCurrentProcess(), &debug);
    child_ok(ret, "CheckRemoteDebuggerPresent failed, last error %#x.\n", GetLastError());
    child_ok(debug, "Expected debug != 0, got %#x.\n", debug);

    NtCurrentTeb()->Peb->BeingDebugged = FALSE;

    ret = pIsDebuggerPresent();
    child_ok(!ret, "Expected ret != 0, got %#x.\n", ret);
    ret = pCheckRemoteDebuggerPresent(GetCurrentProcess(), &debug);
    child_ok(ret, "CheckRemoteDebuggerPresent failed, last error %#x.\n", GetLastError());
    child_ok(debug, "Expected debug != 0, got %#x.\n", debug);

    NtCurrentTeb()->Peb->BeingDebugged = TRUE;

    blackbox.failures = child_failures;
    save_blackbox(blackbox_file, &blackbox, sizeof(blackbox));
}
