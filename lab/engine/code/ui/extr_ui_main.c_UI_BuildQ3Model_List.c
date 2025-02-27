
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int skinname ;
typedef int scratch ;
struct TYPE_2__ {int q3HeadCount; char** q3HeadNames; int * q3HeadIcons; } ;


 int COM_StripExtension (char*,char*,int) ;
 int Com_sprintf (char*,int,char*,char*,...) ;
 int MAX_PLAYERMODELS ;
 int MAX_QPATH ;
 scalar_t__ Q_stricmp (char*,char*) ;
 scalar_t__ Q_stricmpn (char*,char*,int) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 int trap_FS_GetFileList (char*,char*,char*,int) ;
 int trap_R_RegisterShaderNoMip (char*) ;
 TYPE_1__ uiInfo ;
 char* va (char*,char*,...) ;

__attribute__((used)) static void UI_BuildQ3Model_List( void )
{
 int numdirs;
 int numfiles;
 char dirlist[2048];
 char filelist[2048];
 char skinname[MAX_QPATH];
 char scratch[256];
 char* dirptr;
 char* fileptr;
 int i;
 int j, k, dirty;
 int dirlen;
 int filelen;

 uiInfo.q3HeadCount = 0;


 numdirs = trap_FS_GetFileList("models/players", "/", dirlist, 2048 );
 dirptr = dirlist;
 for (i=0; i<numdirs && uiInfo.q3HeadCount < MAX_PLAYERMODELS; i++,dirptr+=dirlen+1)
 {
  dirlen = strlen(dirptr);

  if (dirlen && dirptr[dirlen-1]=='/') dirptr[dirlen-1]='\0';

  if (!strcmp(dirptr,".") || !strcmp(dirptr,".."))
   continue;


  numfiles = trap_FS_GetFileList( va("models/players/%s",dirptr), "tga", filelist, 2048 );
  fileptr = filelist;
  for (j=0; j<numfiles && uiInfo.q3HeadCount < MAX_PLAYERMODELS;j++,fileptr+=filelen+1)
  {
   filelen = strlen(fileptr);

   COM_StripExtension(fileptr, skinname, sizeof(skinname));


   if (Q_stricmpn(skinname, "icon_", 5) == 0 && !(Q_stricmp(skinname,"icon_blue") == 0 || Q_stricmp(skinname,"icon_red") == 0))
   {
    if (Q_stricmp(skinname, "icon_default") == 0) {
     Com_sprintf( scratch, sizeof(scratch), "%s", dirptr);
    } else {
     Com_sprintf( scratch, sizeof(scratch), "%s/%s",dirptr, skinname + 5);
    }
    dirty = 0;
    for(k=0;k<uiInfo.q3HeadCount;k++) {
     if (!Q_stricmp(scratch, uiInfo.q3HeadNames[uiInfo.q3HeadCount])) {
      dirty = 1;
      break;
     }
    }
    if (!dirty) {
     Com_sprintf( uiInfo.q3HeadNames[uiInfo.q3HeadCount], sizeof(uiInfo.q3HeadNames[uiInfo.q3HeadCount]), "%s", scratch);
     uiInfo.q3HeadIcons[uiInfo.q3HeadCount++] = trap_R_RegisterShaderNoMip(va("models/players/%s/%s",dirptr,skinname));
    }
   }

  }
 }

}
