
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_Argc () ;
 char* Cmd_Argv (int) ;
 int Com_Printf (char*,...) ;
 int FS_ConvertPath (char*) ;
 int FS_FreeFileList (char**) ;
 char** FS_ListFilteredFiles (char*,char*,char*,int*,int ) ;
 int FS_SortFileList (char**,int) ;
 int qfalse ;

void FS_NewDir_f( void ) {
 char *filter;
 char **dirnames;
 int ndirs;
 int i;

 if ( Cmd_Argc() < 2 ) {
  Com_Printf( "usage: fdir <filter>\n" );
  Com_Printf( "example: fdir *q3dm*.bsp\n");
  return;
 }

 filter = Cmd_Argv( 1 );

 Com_Printf( "---------------\n" );

 dirnames = FS_ListFilteredFiles( "", "", filter, &ndirs, qfalse );

 FS_SortFileList(dirnames, ndirs);

 for ( i = 0; i < ndirs; i++ ) {
  FS_ConvertPath(dirnames[i]);
  Com_Printf( "%s\n", dirnames[i] );
 }
 Com_Printf( "%d files listed\n", ndirs );
 FS_FreeFileList( dirnames );
}
