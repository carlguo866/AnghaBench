
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct assembly_identity {int dummy; } ;
struct actctx_loader {int dummy; } ;
typedef int attr ;
typedef char WCHAR ;
typedef int ULONG_PTR ;
typedef int ULONG ;
struct TYPE_7__ {scalar_t__ QuadPart; } ;
struct TYPE_6__ {int Length; int Attributes; int * SecurityQualityOfService; int * SecurityDescriptor; int * ObjectName; scalar_t__ RootDirectory; } ;
typedef scalar_t__ SIZE_T ;
typedef TYPE_1__ OBJECT_ATTRIBUTES ;
typedef scalar_t__ NTSTATUS ;
typedef char* LPCWSTR ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int HMODULE ;
typedef int HANDLE ;
typedef int BOOL ;


 int DPRINT (char*,char*,char*) ;
 int NtClose (int ) ;
 scalar_t__ NtCreateSection (int *,int,TYPE_1__*,TYPE_2__*,int ,int ,int ) ;
 int NtCurrentProcess () ;
 scalar_t__ NtMapViewOfSection (int ,int ,void**,int ,int ,TYPE_2__*,scalar_t__*,int ,int ,int ) ;
 int NtUnmapViewOfSection (int ,void*) ;
 int OBJ_CASE_INSENSITIVE ;
 int OBJ_OPENIF ;
 int PAGE_READONLY ;
 int PtrToUlong (char*) ;
 scalar_t__ RtlImageNtHeader (void*) ;
 int SECTION_MAP_READ ;
 int SECTION_QUERY ;
 int SEC_COMMIT ;
 int STANDARD_RIGHTS_REQUIRED ;
 scalar_t__ STATUS_INVALID_IMAGE_FORMAT ;
 scalar_t__ STATUS_SUCCESS ;
 int ViewShare ;
 scalar_t__ get_manifest_in_module (struct actctx_loader*,struct assembly_identity*,char*,char*,int ,int ,char*,int ) ;
 scalar_t__ search_manifest_in_module (struct actctx_loader*,struct assembly_identity*,char*,char*,int ,int ,int ) ;
 int sprintfW (char*,char*,int ) ;

__attribute__((used)) static NTSTATUS get_manifest_in_pe_file( struct actctx_loader* acl, struct assembly_identity* ai,
                                         LPCWSTR filename, LPCWSTR directory, BOOL shared,
                                         HANDLE file, LPCWSTR resname, ULONG lang )
{
    HANDLE mapping;
    OBJECT_ATTRIBUTES attr;
    LARGE_INTEGER size;
    LARGE_INTEGER offset;
    NTSTATUS status;
    SIZE_T count;
    void *base;
    WCHAR resnameBuf[20];
    LPCWSTR resptr = resname;

    if ((!((ULONG_PTR)resname >> 16)))
    {
        sprintfW(resnameBuf, L"#%u", PtrToUlong(resname));
        resptr = resnameBuf;
    }

    DPRINT( "looking for res %S in %S\n", resptr, filename ? filename : L"<NULL>");

    attr.Length = sizeof(attr);
    attr.RootDirectory = 0;
    attr.ObjectName = ((void*)0);
    attr.Attributes = OBJ_CASE_INSENSITIVE | OBJ_OPENIF;
    attr.SecurityDescriptor = ((void*)0);
    attr.SecurityQualityOfService = ((void*)0);

    size.QuadPart = 0;
    status = NtCreateSection( &mapping, STANDARD_RIGHTS_REQUIRED | SECTION_QUERY | SECTION_MAP_READ,
                              &attr, &size, PAGE_READONLY, SEC_COMMIT, file );
    if (status != STATUS_SUCCESS) return status;

    offset.QuadPart = 0;
    count = 0;
    base = ((void*)0);
    status = NtMapViewOfSection( mapping, NtCurrentProcess(), &base, 0, 0, &offset,
                                 &count, ViewShare, 0, PAGE_READONLY );
    NtClose( mapping );
    if (status != STATUS_SUCCESS) return status;

    if (RtlImageNtHeader(base))
    {
        HANDLE module = (HMODULE)((ULONG_PTR)base | 1);
        if (resname)
            status = get_manifest_in_module( acl, ai, filename, directory, shared, module, resname, lang );
        else
            status = search_manifest_in_module(acl, ai, filename, directory, shared, module, lang);
    }
    else status = STATUS_INVALID_IMAGE_FORMAT;

    NtUnmapViewOfSection( NtCurrentProcess(), base );
    return status;
}
