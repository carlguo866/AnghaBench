
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_8__ {scalar_t__ e_magic; long e_lfanew; } ;
struct TYPE_7__ {int SizeOfOptionalHeader; } ;
struct TYPE_6__ {int ImageBase; } ;
typedef scalar_t__ PIMAGE_SECTION_HEADER ;
typedef TYPE_1__* PIMAGE_OPTIONAL_HEADER ;
typedef TYPE_2__* PIMAGE_FILE_HEADER ;
typedef TYPE_3__* PIMAGE_DOS_HEADER ;


 scalar_t__ GetStabInfo (void*,TYPE_2__*,scalar_t__,int *,void**,int *,void**) ;
 scalar_t__ IMAGE_DOS_MAGIC ;
 int IterateStabs (int ,void*,int ,void*,int ,TYPE_2__*,scalar_t__) ;
 int assert (int) ;
 char* convert_path (char*) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int free (void*) ;
 void* load_file (char*,size_t*) ;
 int perror (char*) ;
 int stderr ;

int main(int argc, char* argv[])
{
  PIMAGE_DOS_HEADER PEDosHeader;
  PIMAGE_FILE_HEADER PEFileHeader;
  PIMAGE_OPTIONAL_HEADER PEOptHeader;
  PIMAGE_SECTION_HEADER PESectionHeaders;
  ULONG ImageBase;
  void *StabBase;
  ULONG StabsLength;
  void *StabStringBase;
  ULONG StabStringsLength;
  char* path1;
  size_t FileSize;
  void *FileData;

  if (2 != argc)
    {
      fprintf(stderr, "Usage: dumpstabs <exefile>\n");
      exit(1);
    }

  path1 = convert_path(argv[1]);

  FileData = load_file ( path1, &FileSize );
  if ( !FileData )
  {
    fprintf ( stderr, "An error occured loading '%s'\n", path1 );
    exit(1);
  }


  PEDosHeader = (PIMAGE_DOS_HEADER) FileData;
  if (PEDosHeader->e_magic != IMAGE_DOS_MAGIC || PEDosHeader->e_lfanew == 0L)
    {
      perror("Input file is not a PE image.\n");
      free(FileData);
      exit(1);
    }



  PEFileHeader = (PIMAGE_FILE_HEADER)((char *) FileData + PEDosHeader->e_lfanew + sizeof(ULONG));


  assert(sizeof(ULONG) == 4);
  PEOptHeader = (PIMAGE_OPTIONAL_HEADER)(PEFileHeader + 1);
  ImageBase = PEOptHeader->ImageBase;


  PESectionHeaders = (PIMAGE_SECTION_HEADER)((char *) PEOptHeader + PEFileHeader->SizeOfOptionalHeader);

  if (GetStabInfo(FileData, PEFileHeader, PESectionHeaders, &StabsLength, &StabBase,
                  &StabStringsLength, &StabStringBase))
    {
      free(FileData);
      exit(1);
    }

  IterateStabs( StabsLength, StabBase, StabStringsLength, StabStringBase,
                ImageBase, PEFileHeader, PESectionHeaders);

  free(FileData);

  return 0;
}
