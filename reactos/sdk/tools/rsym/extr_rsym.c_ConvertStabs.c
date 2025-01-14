
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct StringHashTable {int dummy; } ;
typedef scalar_t__ ULONG_PTR ;
typedef int ULONG ;
struct TYPE_9__ {scalar_t__ Address; int SourceLine; void* FunctionOffset; void* FileOffset; } ;
struct TYPE_8__ {scalar_t__ n_value; int n_type; int n_strx; int n_desc; } ;
typedef int STAB_ENTRY ;
typedef int ROSSYM_ENTRY ;
typedef TYPE_1__* PSTAB_ENTRY ;
typedef TYPE_2__* PROSSYM_ENTRY ;
typedef int PIMAGE_SECTION_HEADER ;
typedef int PIMAGE_FILE_HEADER ;
typedef int FuncName ;


 scalar_t__ CompareSymEntry ;
 void* FindOrAddString (struct StringHashTable*,char*,int*,void*) ;





 int StringHashTableFree (struct StringHashTable*) ;
 int StringHashTableInit (struct StringHashTable*,int,char*) ;
 int fprintf (int ,char*) ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int memcpy (char*,char*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int qsort (TYPE_2__*,int,int,int (*) (void const*,void const*)) ;
 int stderr ;
 int strcspn (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int
ConvertStabs(ULONG *SymbolsCount, PROSSYM_ENTRY *SymbolsBase,
             ULONG *StringsLength, void *StringsBase,
             ULONG StabSymbolsLength, void *StabSymbolsBase,
             ULONG StabStringsLength, void *StabStringsBase,
             ULONG_PTR ImageBase, PIMAGE_FILE_HEADER PEFileHeader,
             PIMAGE_SECTION_HEADER PESectionHeaders)
{
    PSTAB_ENTRY StabEntry;
    ULONG Count, i;
    ULONG_PTR Address, LastFunctionAddress;
    int First = 1;
    char *Name;
    ULONG NameLen;
    char FuncName[256];
    PROSSYM_ENTRY Current;
    struct StringHashTable StringHash;

    StabEntry = StabSymbolsBase;
    Count = StabSymbolsLength / sizeof(STAB_ENTRY);
    *SymbolsCount = 0;

    if (Count == 0)
    {

        *SymbolsBase = ((void*)0);
        return 0;
    }

    *SymbolsBase = malloc(Count * sizeof(ROSSYM_ENTRY));
    if (*SymbolsBase == ((void*)0))
    {
        fprintf(stderr, "Failed to allocate memory for converted .stab symbols\n");
        return 1;
    }
    Current = *SymbolsBase;
    memset(Current, 0, sizeof(*Current));

    StringHashTableInit(&StringHash, *StringsLength, (char *)StringsBase);

    LastFunctionAddress = 0;
    for (i = 0; i < Count; i++)
    {
        if (LastFunctionAddress == 0)
        {
            Address = StabEntry[i].n_value - ImageBase;
        }
        else
        {
            Address = LastFunctionAddress + StabEntry[i].n_value;
        }
        switch (StabEntry[i].n_type)
        {
            case 129:
            case 128:
            case 132:
                Name = (char *) StabStringsBase + StabEntry[i].n_strx;
                if (StabStringsLength < StabEntry[i].n_strx
                    || *Name == '\0' || Name[strlen(Name) - 1] == '/'
                    || Name[strlen(Name) - 1] == '\\'
                    || StabEntry[i].n_value < ImageBase)
                {
                    continue;
                }
                if (First || Address != Current->Address)
                {
                    if (!First)
                    {
                        memset(++Current, 0, sizeof(*Current));
                        Current->FunctionOffset = Current[-1].FunctionOffset;
                    }
                    else
                        First = 0;
                    Current->Address = Address;
                }
                Current->FileOffset = FindOrAddString(&StringHash,
                                                      (char *)StabStringsBase + StabEntry[i].n_strx,
                                                      StringsLength,
                                                      StringsBase);
                break;
            case 131:
                if (StabEntry[i].n_desc == 0 || StabEntry[i].n_value < ImageBase)
                {
                    LastFunctionAddress = 0;
                    continue;
                }
                if (First || Address != Current->Address)
                {
                    if (!First)
                        memset(++Current, 0, sizeof(*Current));
                    else
                        First = 0;
                    Current->Address = Address;
                    Current->FileOffset = Current[-1].FileOffset;
                }
                Name = (char *)StabStringsBase + StabEntry[i].n_strx;
                NameLen = strcspn(Name, ":");
                if (sizeof(FuncName) <= NameLen)
                {
                    free(*SymbolsBase);
                    fprintf(stderr, "Function name too long\n");
                    return 1;
                }
                memcpy(FuncName, Name, NameLen);
                FuncName[NameLen] = '\0';
                Current->FunctionOffset = FindOrAddString(&StringHash,
                                                          FuncName,
                                                          StringsLength,
                                                          StringsBase);
                Current->SourceLine = 0;
                LastFunctionAddress = Address;
                break;
            case 130:
                if (First || Address != Current->Address)
                {
                    if (!First)
                    {
                        memset(++Current, 0, sizeof(*Current));
                        Current->FileOffset = Current[-1].FileOffset;
                        Current->FunctionOffset = Current[-1].FunctionOffset;
                    }
                    else
                        First = 0;
                    Current->Address = Address;
                }
                Current->SourceLine = StabEntry[i].n_desc;
                break;
            default:
                continue;
        }
    }
    *SymbolsCount = (Current - *SymbolsBase + 1);

    qsort(*SymbolsBase, *SymbolsCount, sizeof(ROSSYM_ENTRY), (int (*)(const void *, const void *)) CompareSymEntry);

    StringHashTableFree(&StringHash);

    return 0;
}
