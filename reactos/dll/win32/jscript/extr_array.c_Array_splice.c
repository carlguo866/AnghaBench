
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int WORD ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 scalar_t__ DISP_E_UNKNOWNNAME ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int TRACE (char*) ;
 scalar_t__ create_array (int *,int ,int **) ;
 scalar_t__ get_length (int *,int *,int **,int*) ;
 scalar_t__ is_int32 (double) ;
 scalar_t__ jsdisp_delete_idx (int *,int) ;
 scalar_t__ jsdisp_get_idx (int *,int,int *) ;
 scalar_t__ jsdisp_propput_idx (int *,int,int ) ;
 scalar_t__ jsdisp_propput_name (int *,int ,int ) ;
 int jsdisp_release (int *) ;
 int jsval_number (int) ;
 int jsval_obj (int *) ;
 int jsval_release (int ) ;
 int lengthW ;
 int min (int,int) ;
 scalar_t__ to_integer (int *,int ,double*) ;

__attribute__((used)) static HRESULT Array_splice(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    DWORD length, start=0, delete_cnt=0, i, add_args = 0;
    jsdisp_t *ret_array = ((void*)0), *jsthis;
    jsval_t val;
    double d;
    int n;
    HRESULT hres = S_OK;

    TRACE("\n");

    hres = get_length(ctx, vthis, &jsthis, &length);
    if(FAILED(hres))
        return hres;

    if(argc) {
        hres = to_integer(ctx, argv[0], &d);
        if(FAILED(hres))
            return hres;

        if(is_int32(d)) {
            if((n = d) >= 0)
                start = min(n, length);
            else
                start = -n > length ? 0 : length + n;
        }else {
            start = d < 0.0 ? 0 : length;
        }
    }

    if(argc >= 2) {
        hres = to_integer(ctx, argv[1], &d);
        if(FAILED(hres))
            return hres;

        if(is_int32(d)) {
            if((n = d) > 0)
                delete_cnt = min(n, length-start);
        }else if(d > 0.0) {
            delete_cnt = length-start;
        }

        add_args = argc-2;
    }

    if(r) {
        hres = create_array(ctx, 0, &ret_array);
        if(FAILED(hres))
            return hres;

        for(i=0; SUCCEEDED(hres) && i < delete_cnt; i++) {
            hres = jsdisp_get_idx(jsthis, start+i, &val);
            if(hres == DISP_E_UNKNOWNNAME) {
                hres = S_OK;
            }else if(SUCCEEDED(hres)) {
                hres = jsdisp_propput_idx(ret_array, i, val);
                jsval_release(val);
            }
        }

        if(SUCCEEDED(hres))
            hres = jsdisp_propput_name(ret_array, lengthW, jsval_number(delete_cnt));
    }

    if(add_args < delete_cnt) {
        for(i = start; SUCCEEDED(hres) && i < length-delete_cnt; i++) {
            hres = jsdisp_get_idx(jsthis, i+delete_cnt, &val);
            if(hres == DISP_E_UNKNOWNNAME) {
                hres = jsdisp_delete_idx(jsthis, i+add_args);
            }else if(SUCCEEDED(hres)) {
                hres = jsdisp_propput_idx(jsthis, i+add_args, val);
                jsval_release(val);
            }
        }

        for(i=length; SUCCEEDED(hres) && i != length-delete_cnt+add_args; i--)
            hres = jsdisp_delete_idx(jsthis, i-1);
    }else if(add_args > delete_cnt) {
        for(i=length-delete_cnt; SUCCEEDED(hres) && i != start; i--) {
            hres = jsdisp_get_idx(jsthis, i+delete_cnt-1, &val);
            if(hres == DISP_E_UNKNOWNNAME) {
                hres = jsdisp_delete_idx(jsthis, i+add_args-1);
            }else if(SUCCEEDED(hres)) {
                hres = jsdisp_propput_idx(jsthis, i+add_args-1, val);
                jsval_release(val);
            }
        }
    }

    for(i=0; SUCCEEDED(hres) && i < add_args; i++)
        hres = jsdisp_propput_idx(jsthis, start+i, argv[i+2]);

    if(SUCCEEDED(hres))
        hres = jsdisp_propput_name(jsthis, lengthW, jsval_number(length-delete_cnt+add_args));

    if(FAILED(hres)) {
        if(ret_array)
            jsdisp_release(ret_array);
        return hres;
    }

    if(r)
        *r = jsval_obj(ret_array);
    return S_OK;
}
