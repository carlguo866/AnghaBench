
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct assembly_identity {int dummy; } ;
struct actctx_loader {int dummy; } ;
typedef int info ;
typedef int attr ;
struct TYPE_9__ {scalar_t__ QuadPart; } ;
struct TYPE_12__ {TYPE_1__ EndOfFile; } ;
struct TYPE_11__ {scalar_t__ QuadPart; } ;
struct TYPE_10__ {int Length; int Attributes; int * SecurityQualityOfService; int * SecurityDescriptor; int * ObjectName; scalar_t__ RootDirectory; } ;
typedef scalar_t__ SIZE_T ;
typedef TYPE_2__ OBJECT_ATTRIBUTES ;
typedef scalar_t__ NTSTATUS ;
typedef int LPCWSTR ;
typedef TYPE_3__ LARGE_INTEGER ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;
typedef TYPE_4__ FILE_STANDARD_INFORMATION ;
typedef int BOOL ;


 int DPRINT (char*,int ) ;
 int FileStandardInformation ;
 int NtClose (int ) ;
 scalar_t__ NtCreateSection (int *,int,TYPE_2__*,TYPE_3__*,int ,int ,int ) ;
 int NtCurrentProcess () ;
 scalar_t__ NtMapViewOfSection (int ,int ,void**,int ,int ,TYPE_3__*,scalar_t__*,int ,int ,int ) ;
 scalar_t__ NtQueryInformationFile (int ,int *,TYPE_4__*,int,int ) ;
 int NtUnmapViewOfSection (int ,void*) ;
 int OBJ_CASE_INSENSITIVE ;
 int OBJ_OPENIF ;
 int PAGE_READONLY ;
 int SECTION_MAP_READ ;
 int SECTION_QUERY ;
 int SEC_COMMIT ;
 int STANDARD_RIGHTS_REQUIRED ;
 scalar_t__ STATUS_SUCCESS ;
 int ViewShare ;
 scalar_t__ parse_manifest (struct actctx_loader*,struct assembly_identity*,int ,int ,int ,void*,scalar_t__) ;

__attribute__((used)) static NTSTATUS get_manifest_in_manifest_file( struct actctx_loader* acl, struct assembly_identity* ai,
                                               LPCWSTR filename, LPCWSTR directory, BOOL shared, HANDLE file )
{
    FILE_STANDARD_INFORMATION info;
    IO_STATUS_BLOCK io;
    HANDLE mapping;
    OBJECT_ATTRIBUTES attr;
    LARGE_INTEGER size;
    LARGE_INTEGER offset;
    NTSTATUS status;
    SIZE_T count;
    void *base;

    DPRINT( "loading manifest file %S\n", filename );

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


    status = NtQueryInformationFile( file, &io, &info, sizeof(info), FileStandardInformation);

    if (status == STATUS_SUCCESS)
        status = parse_manifest(acl, ai, filename, directory, shared, base, (SIZE_T)info.EndOfFile.QuadPart);

    NtUnmapViewOfSection( NtCurrentProcess(), base );
    return status;
}
