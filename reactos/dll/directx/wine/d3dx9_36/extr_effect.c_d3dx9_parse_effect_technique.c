
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_technique {int annotation_count; int pass_count; char* annotations; char* passes; char* name; } ;
struct d3dx_object {int dummy; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 scalar_t__ D3D_OK ;
 int ERR (char*) ;
 scalar_t__ E_OUTOFMEMORY ;
 int FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int TRACE (char*,int) ;
 int WARN (char*,...) ;
 scalar_t__ d3dx9_parse_effect_annotation (struct d3dx9_base_effect*,char*,char const*,char const**,struct d3dx_object*) ;
 scalar_t__ d3dx9_parse_effect_pass (struct d3dx9_base_effect*,char*,char const*,char const**,struct d3dx_object*) ;
 scalar_t__ d3dx9_parse_name (char**,char const*) ;
 int free_parameter (char*,int ,int ) ;
 int free_pass (char*) ;
 int param_set_magic_number (char*) ;
 int read_dword (char const**,int*) ;

__attribute__((used)) static HRESULT d3dx9_parse_effect_technique(struct d3dx9_base_effect *base, struct d3dx_technique *technique,
        const char *data, const char **ptr, struct d3dx_object *objects)
{
    DWORD offset;
    HRESULT hr;
    unsigned int i;
    char *name = ((void*)0);

    read_dword(ptr, &offset);
    TRACE("Technique name offset: %#x\n", offset);
    hr = d3dx9_parse_name(&name, data + offset);
    if (hr != D3D_OK)
    {
        WARN("Failed to parse name\n");
        goto err_out;
    }

    read_dword(ptr, &technique->annotation_count);
    TRACE("Annotation count: %u\n", technique->annotation_count);

    read_dword(ptr, &technique->pass_count);
    TRACE("Pass count: %u\n", technique->pass_count);

    if (technique->annotation_count)
    {
        technique->annotations = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY,
                sizeof(*technique->annotations) * technique->annotation_count);
        if (!technique->annotations)
        {
            ERR("Out of memory\n");
            hr = E_OUTOFMEMORY;
            goto err_out;
        }

        for (i = 0; i < technique->annotation_count; ++i)
        {
            param_set_magic_number(&technique->annotations[i]);
            hr = d3dx9_parse_effect_annotation(base, &technique->annotations[i], data, ptr, objects);
            if (hr != D3D_OK)
            {
                WARN("Failed to parse annotation %u\n", i);
                goto err_out;
            }
        }
    }

    if (technique->pass_count)
    {
        technique->passes = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY,
                sizeof(*technique->passes) * technique->pass_count);
        if (!technique->passes)
        {
            ERR("Out of memory\n");
            hr = E_OUTOFMEMORY;
            goto err_out;
        }

        for (i = 0; i < technique->pass_count; ++i)
        {
            hr = d3dx9_parse_effect_pass(base, &technique->passes[i], data, ptr, objects);
            if (hr != D3D_OK)
            {
                WARN("Failed to parse pass %u\n", i);
                goto err_out;
            }
        }
    }

    technique->name = name;

    return D3D_OK;

err_out:

    if (technique->passes)
    {
        for (i = 0; i < technique->pass_count; ++i)
            free_pass(&technique->passes[i]);
        HeapFree(GetProcessHeap(), 0, technique->passes);
        technique->passes = ((void*)0);
    }

    if (technique->annotations)
    {
        for (i = 0; i < technique->annotation_count; ++i)
            free_parameter(&technique->annotations[i], FALSE, FALSE);
        HeapFree(GetProcessHeap(), 0, technique->annotations);
        technique->annotations = ((void*)0);
    }

    HeapFree(GetProcessHeap(), 0, name);

    return hr;
}
