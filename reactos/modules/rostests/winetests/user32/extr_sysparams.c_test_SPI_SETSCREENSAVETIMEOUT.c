
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vals ;
typedef int UINT ;
typedef int BOOL ;


 int GetLastError () ;
 int SPIF_SENDCHANGE ;
 int SPIF_UPDATEINIFILE ;
 int SPI_GETSCREENSAVETIMEOUT ;
 int SPI_SETSCREENSAVETIMEOUT ;
 int SPI_SETSCREENSAVETIMEOUT_REGKEY ;
 int SPI_SETSCREENSAVETIMEOUT_VALNAME ;
 int SetLastError (int) ;
 int SystemParametersInfoA (int ,int const,int*,int) ;
 int eq (int,int const,char*,char*) ;
 int ok (int ,char*,unsigned int,int ,...) ;
 int sprintf (char*,char*,int const) ;
 int test_change_message (int ,int ) ;
 int test_error_msg (int ,char*) ;
 int test_reg_key (int ,int ,char*) ;
 int trace (char*) ;

__attribute__((used)) static void test_SPI_SETSCREENSAVETIMEOUT( void )
{
    BOOL rc;
    UINT old_timeout;
    const UINT vals[]={0,32767};
    unsigned int i;

    trace("testing SPI_{GET,SET}SCREENSAVETIMEOUT\n");
    SetLastError(0xdeadbeef);
    rc=SystemParametersInfoA( SPI_GETSCREENSAVETIMEOUT, 0, &old_timeout, 0 );
    if (!test_error_msg(rc,"SPI_{GET,SET}SCREENSAVETIMEOUT"))
        return;

    for (i=0;i<sizeof(vals)/sizeof(*vals);i++)
    {
        UINT v;
        char buf[10];

        rc=SystemParametersInfoA( SPI_SETSCREENSAVETIMEOUT, vals[i], 0,
                               SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
        if (!test_error_msg(rc,"SPI_SETSCREENSAVETIMEOUT")) return;
        ok(rc, "%d: rc=%d err=%d\n", i, rc, GetLastError());
        test_change_message( SPI_SETSCREENSAVETIMEOUT, 0 );
        sprintf( buf, "%d", vals[i] );
        test_reg_key( SPI_SETSCREENSAVETIMEOUT_REGKEY,
                      SPI_SETSCREENSAVETIMEOUT_VALNAME, buf );

        rc = SystemParametersInfoA( SPI_GETSCREENSAVETIMEOUT, 0, &v, 0 );
        ok(rc, "%d: rc=%d err=%d\n", i, rc, GetLastError());
        eq( v, vals[i], "SPI_{GET,SET}SCREENSAVETIMEOUT", "%d" );
    }

    rc=SystemParametersInfoA( SPI_SETSCREENSAVETIMEOUT, old_timeout, 0,
                              SPIF_UPDATEINIFILE );
    ok(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, GetLastError());
}
