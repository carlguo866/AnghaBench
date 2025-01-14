
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef scalar_t__ HFILE ;
typedef scalar_t__ BOOL ;


 scalar_t__ DeleteFileA (int ) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_BEGIN ;
 int GetLastError () ;
 scalar_t__ HFILE_ERROR ;
 int OF_READ ;
 int SetFileAttributesA (int ,int ) ;
 scalar_t__ _hread (scalar_t__,char*,scalar_t__) ;
 scalar_t__ _hwrite (scalar_t__,char*,int) ;
 scalar_t__ _lclose (scalar_t__) ;
 scalar_t__ _lcreat (int ,int ) ;
 scalar_t__ _llseek (scalar_t__,int ,int ) ;
 scalar_t__ _lopen (int ,int ) ;
 int filename ;
 scalar_t__ lstrlenA (char*) ;
 int ok (int,char*,...) ;
 char* sillytext ;
 int strlen (char*) ;

__attribute__((used)) static void test__hread( void )
{
    HFILE filehandle;
    char buffer[10000];
    LONG bytes_read;
    LONG bytes_wanted;
    LONG i;
    BOOL ret;

    SetFileAttributesA(filename,FILE_ATTRIBUTE_NORMAL);
    DeleteFileA( filename );
    filehandle = _lcreat( filename, 0 );
    if (filehandle == HFILE_ERROR)
    {
        ok(0,"couldn't create file \"%s\" (err=%d)\n",filename,GetLastError());
        return;
    }

    ok( HFILE_ERROR != _hwrite( filehandle, sillytext, strlen( sillytext ) ), "_hwrite complains\n" );

    ok( HFILE_ERROR != _lclose(filehandle), "_lclose complains\n" );

    filehandle = _lopen( filename, OF_READ );

    ok( HFILE_ERROR != filehandle, "couldn't open file \"%s\" again (err=%d)\n", filename, GetLastError( ) );

    bytes_read = _hread( filehandle, buffer, 2 * strlen( sillytext ) );

    ok( lstrlenA( sillytext ) == bytes_read, "file read size error\n" );

    for (bytes_wanted = 0; bytes_wanted < lstrlenA( sillytext ); bytes_wanted++)
    {
        ok( 0 == _llseek( filehandle, 0, FILE_BEGIN ), "_llseek complains\n" );
        ok( _hread( filehandle, buffer, bytes_wanted ) == bytes_wanted, "erratic _hread return value\n" );
        for (i = 0; i < bytes_wanted; i++)
        {
            ok( buffer[i] == sillytext[i], "that's not what's written\n" );
        }
    }

    ok( HFILE_ERROR != _lclose( filehandle ), "_lclose complains\n" );

    ret = DeleteFileA( filename );
    ok( ret != 0, "DeleteFile failed (%d)\n", GetLastError( ) );
}
