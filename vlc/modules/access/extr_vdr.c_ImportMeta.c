
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_meta_t ;
typedef unsigned int time_t ;
struct tm {int dummy; } ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int str ;
struct TYPE_6__ {float fps; int * p_meta; } ;
typedef TYPE_2__ access_sys_t ;
typedef int FILE ;


 int * OpenRelativeFile (TYPE_1__*,char*) ;
 scalar_t__ ReadLine (char**,size_t*,int *) ;
 float atof (char*) ;
 int fclose (int *) ;
 int free (char*) ;
 int isalpha (unsigned char) ;
 int localtime_r (unsigned int*,struct tm*) ;
 char* malloc (int) ;
 int snprintf (char*,int,char*,unsigned int,unsigned int) ;
 int sscanf (char*,char*,unsigned int*,unsigned int*,unsigned int*) ;
 int strcat (char*,char*) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 int strftime (char*,int,char*,struct tm*) ;
 int strlen (char*) ;
 int vlc_meta_AddExtra (int *,char*,char*) ;
 int * vlc_meta_New () ;
 int vlc_meta_SetDescription (int *,char*) ;
 int vlc_meta_SetTitle (int *,char*) ;

__attribute__((used)) static void ImportMeta( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;

    FILE *infofile = OpenRelativeFile( p_access, "info" );
    if( !infofile )
        return;

    vlc_meta_t *p_meta = vlc_meta_New();
    p_sys->p_meta = p_meta;
    if( !p_meta )
    {
        fclose( infofile );
        return;
    }

    char *line = ((void*)0);
    size_t line_len;
    char *psz_title = ((void*)0), *psz_smalltext = ((void*)0), *psz_date = ((void*)0);

    while( ReadLine( &line, &line_len, infofile ) )
    {
        if( !isalpha( (unsigned char)line[0] ) || line[1] != ' ' )
            continue;

        char tag = line[0];
        char *text = line + 2;

        if( tag == 'C' )
        {
            char *psz_name = strchr( text, ' ' );
            if( psz_name )
            {
                *psz_name = '\0';
                vlc_meta_AddExtra( p_meta, "Channel", psz_name + 1 );
            }
            vlc_meta_AddExtra( p_meta, "Transponder", text );
        }

        else if( tag == 'E' )
        {
            unsigned i_id, i_start, i_length;
            if( sscanf( text, "%u %u %u", &i_id, &i_start, &i_length ) == 3 )
            {
                char str[50];
                struct tm tm;
                time_t start = i_start;
                localtime_r( &start, &tm );


                strftime( str, sizeof(str), "%Y-%m-%d %H:%M", &tm );
                vlc_meta_AddExtra( p_meta, "Date", str );
                free( psz_date );
                psz_date = strdup( str );


                i_length = ( i_length + 59 ) / 60;
                snprintf( str, sizeof(str), "%u:%02u", i_length / 60, i_length % 60 );
                vlc_meta_AddExtra( p_meta, "Duration", str );
            }
        }

        else if( tag == 'T' )
        {
            free( psz_title );
            psz_title = strdup( text );
            vlc_meta_AddExtra( p_meta, "Title", text );
        }

        else if( tag == 'S' )
        {
            free( psz_smalltext );
            psz_smalltext = strdup( text );
            vlc_meta_AddExtra( p_meta, "Info", text );
        }

        else if( tag == 'D' )
        {
            for( char *p = text; *p; ++p )
            {
                if( *p == '|' )
                    *p = '\n';
            }
            vlc_meta_SetDescription( p_meta, text );
        }


        else if( tag == 'F' )
        {
            float fps = atof( text );
            if( fps >= 1 )
                p_sys->fps = fps;
            vlc_meta_AddExtra( p_meta, "Frame Rate", text );
        }

        else if( tag == 'P' )
        {
            vlc_meta_AddExtra( p_meta, "Priority", text );
        }

        else if( tag == 'L' )
        {
            vlc_meta_AddExtra( p_meta, "Lifetime", text );
        }
    }


    int i_len = 10 +
        ( psz_title ? strlen( psz_title ) : 0 ) +
        ( psz_smalltext ? strlen( psz_smalltext ) : 0 ) +
        ( psz_date ? strlen( psz_date ) : 0 );
    char *psz_display = malloc( i_len );

    if( psz_display )
    {
        *psz_display = '\0';
        if( psz_title )
            strcat( psz_display, psz_title );
        if( psz_title && psz_smalltext )
            strcat( psz_display, " - " );
        if( psz_smalltext )
            strcat( psz_display, psz_smalltext );
        if( ( psz_title || psz_smalltext ) && psz_date )
        {
            strcat( psz_display, " (" );
            strcat( psz_display, psz_date );
            strcat( psz_display, ")" );
        }
        if( *psz_display )
            vlc_meta_SetTitle( p_meta, psz_display );
    }

    free( psz_display );
    free( psz_title );
    free( psz_smalltext );
    free( psz_date );

    fclose( infofile );
}
