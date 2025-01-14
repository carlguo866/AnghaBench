
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char const* LPCWSTR ;
typedef int IUriBuilder ;
typedef int IUri ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ E_POINTER ;
 scalar_t__ FALSE ;
 scalar_t__ IUriBuilder_GetHost (int *,scalar_t__*,char const**) ;
 scalar_t__ IUriBuilder_HasBeenModified (int *,scalar_t__*) ;
 int IUriBuilder_Release (int *) ;
 scalar_t__ IUriBuilder_SetHost (int *,char const*) ;
 scalar_t__ IUriBuilder_SetIUri (int *,int *) ;
 int IUri_Release (int *) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 scalar_t__ TRUE ;
 int http_urlW ;
 int lstrcmpW (char const*,char const*) ;
 scalar_t__ lstrlenW (char const*) ;
 int ok (int,char*,...) ;
 scalar_t__ pCreateIUriBuilder (int *,int ,int ,int **) ;
 scalar_t__ pCreateUri (int ,int ,int ,int **) ;
 scalar_t__ wine_dbgstr_w (char const*) ;

__attribute__((used)) static void test_IUriBuilder_HasBeenModified(void) {
    HRESULT hr;
    IUriBuilder *builder = ((void*)0);

    hr = pCreateIUriBuilder(((void*)0), 0, 0, &builder);
    ok(hr == S_OK, "Error: CreateIUriBuilder returned 0x%08x, expected 0x%08x.\n", hr, S_OK);
    if(SUCCEEDED(hr)) {
        static const WCHAR hostW[] = {'g','o','o','g','l','e','.','c','o','m',0};
        IUri *uri = ((void*)0);
        BOOL received;

        hr = IUriBuilder_HasBeenModified(builder, ((void*)0));
        ok(hr == E_POINTER, "Error: IUriBuilder_HasBeenModified returned 0x%08x, expected 0x%08x.\n",
            hr, E_POINTER);

        hr = IUriBuilder_SetHost(builder, hostW);
        ok(hr == S_OK, "Error: IUriBuilder_SetHost returned 0x%08x, expected 0x%08x.\n",
            hr, S_OK);

        hr = IUriBuilder_HasBeenModified(builder, &received);
        ok(hr == S_OK, "Error: IUriBuilder_HasBeenModified returned 0x%08x, expected 0x%08x.\n",
            hr, S_OK);
        if(SUCCEEDED(hr))
            ok(received == TRUE, "Error: Expected received to be TRUE.\n");

        hr = pCreateUri(http_urlW, 0, 0, &uri);
        ok(hr == S_OK, "Error: CreateUri returned 0x%08x, expected 0x%08x.\n", hr, S_OK);
        if(SUCCEEDED(hr)) {
            LPCWSTR prop;
            DWORD len = -1;

            hr = IUriBuilder_SetIUri(builder, uri);
            ok(hr == S_OK, "Error: IUriBuilder_SetIUri returned 0x%08x, expected 0x%08x.\n",
                hr, S_OK);

            hr = IUriBuilder_HasBeenModified(builder, &received);
            ok(hr == S_OK, "Error: IUriBuilder_HasBeenModified returned 0x%08x, expected 0x%08x.\n",
                hr, S_OK);
            if(SUCCEEDED(hr))
                ok(received == FALSE, "Error: Expected received to be FALSE.\n");


            hr = IUriBuilder_SetHost(builder, hostW);
            ok(hr == S_OK, "Error: IUriBuilder_SetHost returned 0x%08x, expected 0x%08x.\n", hr, S_OK);

            hr = IUriBuilder_HasBeenModified(builder, &received);
            ok(hr == S_OK, "Error: IUriBuilder_HasBeenModified returned 0x%08x, expected 0x%08x.\n",
                hr, S_OK);
            if(SUCCEEDED(hr))
                ok(received == TRUE, "Error: Expected received to be TRUE.\n");

            hr = IUriBuilder_SetIUri(builder, uri);
            ok(hr == S_OK, "Error: IUriBuilder_SetIUri returned 0x%08x, expected 0x%08x.\n", hr, S_OK);




            hr = IUriBuilder_HasBeenModified(builder, &received);
            ok(hr == S_OK, "Error: IUriBuilder_HasBeenModified returned 0x%08x, expected 0x%08x.\n", hr, S_OK);
            if(SUCCEEDED(hr))
                ok(received == TRUE, "Error: Expected received to be TRUE.\n");

            hr = IUriBuilder_GetHost(builder, &len, &prop);
            ok(hr == S_OK, "Error: IUriBuilder_GetHost returned 0x%08x, expected 0x%08x.\n", hr, S_OK);
            if(SUCCEEDED(hr)) {
                ok(!lstrcmpW(prop, hostW), "Error: Expected %s but got %s instead.\n",
                    wine_dbgstr_w(hostW), wine_dbgstr_w(prop));
                ok(len == lstrlenW(hostW), "Error: Expected len to be %d, but was %d instead.\n",
                    lstrlenW(hostW), len);
            }

            hr = IUriBuilder_SetIUri(builder, ((void*)0));
            ok(hr == S_OK, "Error: IUriBuilder_SetIUri returned 0x%08x, expected 0x%08x.\n", hr, S_OK);

            hr = IUriBuilder_SetHost(builder, hostW);
            ok(hr == S_OK, "Error: IUriBuilder_SetHost returned 0x%08x, expected 0x%08x.\n", hr, S_OK);
            hr = IUriBuilder_HasBeenModified(builder, &received);
            ok(hr == S_OK, "Error: IUriBuilder_HasBeenModified returned 0x%08x, expected 0x%08x.\n",
                hr, S_OK);
            if(SUCCEEDED(hr))
                ok(received == TRUE, "Error: Expected received to be TRUE.\n");

            hr = IUriBuilder_SetIUri(builder, ((void*)0));
            ok(hr == S_OK, "Error: IUriBuilder_SetIUri returned 0x%08x, expected 0x%09x.\n", hr, S_OK);

            hr = IUriBuilder_HasBeenModified(builder, &received);
            ok(hr == S_OK, "Error: IUriBuilder_HasBeenModified returned 0x%08x, expected 0x%08x.\n",
                hr, S_OK);
            if(SUCCEEDED(hr))
                ok(received == TRUE, "Error: Expected received to be TRUE.\n");

            hr = IUriBuilder_GetHost(builder, &len, &prop);
            ok(hr == S_OK, "Error: IUriBuilder_GetHost returned 0x%08x, expected 0x%08x.\n", hr, S_OK);
            if(SUCCEEDED(hr)) {
                ok(!lstrcmpW(prop, hostW), "Error: Expected %s but got %s instead.\n",
                    wine_dbgstr_w(hostW), wine_dbgstr_w(prop));
                ok(len == lstrlenW(hostW), "Error: Expected len to %d, but was %d instead.\n",
                    lstrlenW(hostW), len);
            }
        }
        if(uri) IUri_Release(uri);
    }
    if(builder) IUriBuilder_Release(builder);
}
