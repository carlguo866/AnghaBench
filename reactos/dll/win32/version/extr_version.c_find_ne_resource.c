
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nehd ;
typedef scalar_t__ WORD ;
struct TYPE_6__ {int ne_restab; int ne_rsrctab; } ;
struct TYPE_5__ {scalar_t__ const id; scalar_t__ length; scalar_t__ offset; } ;
struct TYPE_4__ {scalar_t__ const type_id; int count; } ;
typedef TYPE_1__ NE_TYPEINFO ;
typedef TYPE_2__ NE_NAMEINFO ;
typedef char* LPSTR ;
typedef scalar_t__ LPBYTE ;
typedef TYPE_3__ IMAGE_OS2_HEADER ;
typedef int HFILE ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__) ;
 int LZRead (int ,char*,int) ;
 int LZSeek (int ,int,int ) ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int TRACE (char*) ;
 int TRUE ;
 int VS_FILE_INFO ;
 int VS_VERSION_INFO ;

__attribute__((used)) static BOOL find_ne_resource( HFILE lzfd, DWORD *resLen, DWORD *resOff )
{
    const WORD typeid = VS_FILE_INFO | 0x8000;
    const WORD resid = VS_VERSION_INFO | 0x8000;
    IMAGE_OS2_HEADER nehd;
    NE_TYPEINFO *typeInfo;
    NE_NAMEINFO *nameInfo;
    DWORD nehdoffset;
    LPBYTE resTab;
    DWORD resTabSize;
    int count;


    nehdoffset = LZSeek( lzfd, 0, SEEK_CUR );
    if ( sizeof(nehd) != LZRead( lzfd, (LPSTR)&nehd, sizeof(nehd) ) ) return FALSE;

    resTabSize = nehd.ne_restab - nehd.ne_rsrctab;
    if ( !resTabSize )
    {
        TRACE("No resources in NE dll\n" );
        return FALSE;
    }


    resTab = HeapAlloc( GetProcessHeap(), 0, resTabSize );
    if ( !resTab ) return FALSE;

    LZSeek( lzfd, nehd.ne_rsrctab + nehdoffset, SEEK_SET );
    if ( resTabSize != LZRead( lzfd, (char*)resTab, resTabSize ) )
    {
        HeapFree( GetProcessHeap(), 0, resTab );
        return FALSE;
    }


    typeInfo = (NE_TYPEINFO *)(resTab + 2);
    while (typeInfo->type_id)
    {
        if (typeInfo->type_id == typeid) goto found_type;
        typeInfo = (NE_TYPEINFO *)((char *)(typeInfo + 1) +
                                   typeInfo->count * sizeof(NE_NAMEINFO));
    }
    TRACE("No typeid entry found\n" );
    HeapFree( GetProcessHeap(), 0, resTab );
    return FALSE;

 found_type:
    nameInfo = (NE_NAMEINFO *)(typeInfo + 1);

    for (count = typeInfo->count; count > 0; count--, nameInfo++)
        if (nameInfo->id == resid) goto found_name;

    TRACE("No resid entry found\n" );
    HeapFree( GetProcessHeap(), 0, resTab );
    return FALSE;

 found_name:

    if ( resLen ) *resLen = nameInfo->length << *(WORD *)resTab;
    if ( resOff ) *resOff = nameInfo->offset << *(WORD *)resTab;

    HeapFree( GetProcessHeap(), 0, resTab );
    return TRUE;
}
