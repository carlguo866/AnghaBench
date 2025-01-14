
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int FILENAME_MAX ;
 int SIO_Dismount (int) ;
 int SIO_MAX_DRIVES ;
 int SIO_Mount (int,char*,int) ;
 int * SIO_filename ;
 int TRUE ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,int ) ;

int SIO_RotateDisks(void)
{
 char tmp_filenames[SIO_MAX_DRIVES][FILENAME_MAX];
 int i;
 int bSuccess = TRUE;

 for (i = 0; i < SIO_MAX_DRIVES; i++) {
  strcpy(tmp_filenames[i], SIO_filename[i]);
  SIO_Dismount(i + 1);
 }

 for (i = 1; i < SIO_MAX_DRIVES; i++) {
  if (strcmp(tmp_filenames[i], "None") && strcmp(tmp_filenames[i], "Off") && strcmp(tmp_filenames[i], "Empty") ) {
   if (!SIO_Mount(i, tmp_filenames[i], FALSE))
    bSuccess = FALSE;
  }
 }

 i = SIO_MAX_DRIVES - 1;
 while (i > -1 && (!strcmp(tmp_filenames[i], "None") || !strcmp(tmp_filenames[i], "Off") || !strcmp(tmp_filenames[i], "Empty")) ) {
  i--;
 }

 if (i > -1) {
  if (!SIO_Mount(i + 1, tmp_filenames[0], FALSE))
   bSuccess = FALSE;
 }

 return bSuccess;
}
