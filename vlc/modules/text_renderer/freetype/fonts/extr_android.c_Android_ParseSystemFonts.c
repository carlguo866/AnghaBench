
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_reader_t ;
typedef int stream_t ;
typedef int filter_t ;


 int Android_Legacy_ParseFamily (int *,int *) ;
 int Android_Nougat_ParseFamily (int *,int *) ;
 int Android_ParseAlias (int *,int *) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int XML_READER_STARTELEM ;
 int strcasecmp (char*,char const*) ;
 int vlc_stream_Delete (int *) ;
 int * vlc_stream_NewURL (int *,char const*) ;
 int * xml_ReaderCreate (int *,int *) ;
 int xml_ReaderDelete (int *) ;
 int xml_ReaderNextNode (int *,char const**) ;

__attribute__((used)) static int Android_ParseSystemFonts( filter_t *p_filter, const char *psz_path,
                                     bool b_new_format )
{
    int i_ret = VLC_SUCCESS;
    stream_t *p_stream = vlc_stream_NewURL( p_filter, psz_path );

    if( !p_stream )
        return VLC_EGENERIC;

    xml_reader_t *p_xml = xml_ReaderCreate( p_filter, p_stream );

    if( !p_xml )
    {
        vlc_stream_Delete( p_stream );
        return VLC_EGENERIC;
    }

    const char *p_node;
    int i_type;
    while( ( i_type = xml_ReaderNextNode( p_xml, &p_node ) ) > 0 )
    {
        if( i_type == XML_READER_STARTELEM && !strcasecmp( "family", p_node ) && b_new_format )
        {
            if( ( i_ret = Android_Nougat_ParseFamily( p_filter, p_xml ) ) )
                break;
        }
        else if( i_type == XML_READER_STARTELEM && !strcasecmp( "family", p_node ) && !b_new_format )
        {
            if( ( i_ret = Android_Legacy_ParseFamily( p_filter, p_xml ) ) )
                break;
        }
        else if( i_type == XML_READER_STARTELEM && !strcasecmp( "alias", p_node ) && b_new_format )
        {
            if( ( i_ret = Android_ParseAlias( p_filter, p_xml ) ) )
                break;
        }
    }

    xml_ReaderDelete( p_xml );
    vlc_stream_Delete( p_stream );
    return i_ret;
}
