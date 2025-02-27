
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int DWORD ;


 scalar_t__ DRIVE_CDROM ;
 scalar_t__ GetDriveTypeW (char*) ;
 scalar_t__ GetFileAttributesW (char*) ;
 int GetLogicalDrives () ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;

__attribute__((used)) static WCHAR *get_empty_cddrive(void)
{
    static WCHAR cdrom_drive[] = {'A',':','\\',0};
    DWORD drives = GetLogicalDrives();

    cdrom_drive[0] = 'A';
    while (drives)
    {
        if ((drives & 1) &&
            GetDriveTypeW(cdrom_drive) == DRIVE_CDROM &&
            GetFileAttributesW(cdrom_drive) == INVALID_FILE_ATTRIBUTES)
        {
            return cdrom_drive;
        }

        drives = drives >> 1;
        cdrom_drive[0]++;
    }
    return ((void*)0);
}
