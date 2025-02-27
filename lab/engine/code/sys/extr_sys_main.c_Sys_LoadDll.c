
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ qboolean ;
typedef int libPath ;


 int Com_Printf (char*,char const*,...) ;
 int Com_sprintf (char*,int,char*,char const*,int ,char const*) ;
 char* Cvar_VariableString (char*) ;
 scalar_t__ FS_FilenameCompare (char const*,char const*) ;
 int MAX_OSPATH ;
 int PATH_SEP ;
 char* Sys_BinaryPath () ;
 int Sys_DllExtension (char const*) ;
 void* Sys_LoadLibrary (char const*) ;

void *Sys_LoadDll(const char *name, qboolean useSystemLib)
{
 void *dllhandle = ((void*)0);

 if(!Sys_DllExtension(name))
 {
  Com_Printf("Refusing to attempt to load library \"%s\": Extension not allowed.\n", name);
  return ((void*)0);
 }

 if(useSystemLib)
 {
  Com_Printf("Trying to load \"%s\"...\n", name);
  dllhandle = Sys_LoadLibrary(name);
 }

 if(!dllhandle)
 {
  const char *topDir;
  char libPath[MAX_OSPATH];
  int len;

  topDir = Sys_BinaryPath();

  if(!*topDir)
   topDir = ".";

  len = Com_sprintf(libPath, sizeof(libPath), "%s%c%s", topDir, PATH_SEP, name);
  if(len < sizeof(libPath))
  {
   Com_Printf("Trying to load \"%s\" from \"%s\"...\n", name, topDir);
   dllhandle = Sys_LoadLibrary(libPath);
  }
  else
  {
   Com_Printf("Skipping trying to load \"%s\" from \"%s\", file name is too long.\n", name, topDir);
  }

  if(!dllhandle)
  {
   const char *basePath = Cvar_VariableString("fs_basepath");

   if(!basePath || !*basePath)
    basePath = ".";

   if(FS_FilenameCompare(topDir, basePath))
   {
    len = Com_sprintf(libPath, sizeof(libPath), "%s%c%s", basePath, PATH_SEP, name);
    if(len < sizeof(libPath))
    {
     Com_Printf("Trying to load \"%s\" from \"%s\"...\n", name, basePath);
     dllhandle = Sys_LoadLibrary(libPath);
    }
    else
    {
     Com_Printf("Skipping trying to load \"%s\" from \"%s\", file name is too long.\n", name, basePath);
    }
   }

   if(!dllhandle)
    Com_Printf("Loading \"%s\" failed\n", name);
  }
 }

 return dllhandle;
}
