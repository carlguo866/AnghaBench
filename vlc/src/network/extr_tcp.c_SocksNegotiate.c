
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int uint8_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int memcpy (int*,char const*,int const) ;
 int msg_Dbg (int *,char*,...) ;
 int msg_Err (int *,char*,...) ;
 int net_Read (int *,int,int*,int) ;
 int net_Write (int *,int,int*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int SocksNegotiate( vlc_object_t *p_obj,
                           int fd, int i_socks_version,
                           const char *psz_socks_user,
                           const char *psz_socks_passwd )
{
    uint8_t buffer[128+2*256];
    int i_len;
    bool b_auth = 0;

    if( i_socks_version != 5 )
        return VLC_SUCCESS;


    buffer[0] = i_socks_version;
    if( psz_socks_user != ((void*)0) && psz_socks_passwd != ((void*)0) )
    {
        buffer[1] = 2;
        buffer[2] = 0x00;
        buffer[3] = 0x02;
        i_len = 4;
        b_auth = 1;
    }
    else
    {
        buffer[1] = 1;
        buffer[2] = 0x00;
        i_len = 3;
    }

    if( net_Write( p_obj, fd, buffer, i_len ) != i_len )
        return VLC_EGENERIC;
    if( net_Read( p_obj, fd, buffer, 2) != 2 )
        return VLC_EGENERIC;

    msg_Dbg( p_obj, "socks: v=%d method=%x", buffer[0], buffer[1] );

    if( buffer[1] == 0x00 )
    {
        msg_Dbg( p_obj, "socks: no authentication required" );
    }
    else if( buffer[1] == 0x02 )
    {
        if( psz_socks_user == ((void*)0) || psz_socks_passwd == ((void*)0) )
        {
            msg_Err( p_obj, "socks: server mandates authentication but "
                            "a username and/or password was not supplied" );
            return VLC_EGENERIC;
        }

        int const i_user = strlen( psz_socks_user );
        int const i_pasw = strlen( psz_socks_passwd );

        if( i_user > 255 || i_pasw > 255 )
        {
            msg_Err( p_obj, "socks: rejecting username and/or password due to "
                            "violation of RFC1929 (longer than 255 bytes)" );
            return VLC_EGENERIC;
        }

        msg_Dbg( p_obj, "socks: username/password authentication" );

        buffer[0] = i_socks_version;
        buffer[1] = i_user;
        memcpy( &buffer[2], psz_socks_user, i_user );
        buffer[2+i_user] = i_pasw;
        memcpy( &buffer[2+i_user+1], psz_socks_passwd, i_pasw );

        i_len = 3 + i_user + i_pasw;

        if( net_Write( p_obj, fd, buffer, i_len ) != i_len )
            return VLC_EGENERIC;

        if( net_Read( p_obj, fd, buffer, 2 ) != 2 )
            return VLC_EGENERIC;

        msg_Dbg( p_obj, "socks: v=%d status=%x", buffer[0], buffer[1] );
        if( buffer[1] != 0x00 )
        {
            msg_Err( p_obj, "socks: authentication rejected" );
            return VLC_EGENERIC;
        }
    }
    else
    {
        if( b_auth )
            msg_Err( p_obj, "socks: unsupported authentication method %x",
                     buffer[0] );
        else
            msg_Err( p_obj, "socks: authentication needed" );
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}
