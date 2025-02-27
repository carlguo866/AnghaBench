
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int extra3; } ;
typedef TYPE_1__* OTV_Validator ;
typedef int FT_UInt ;
typedef int FT_Int ;
typedef int FT_Bytes ;


 int FT_INVALID_FORMAT ;
 int FT_NEXT_USHORT (int) ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_NAME_ENTER (char*) ;
 int OTV_TRACE (char*) ;
 int otv_Coverage_validate (int,TYPE_1__*,int) ;
 int otv_ValueRecord_validate (int,int,TYPE_1__*) ;
 int otv_value_length (int) ;

__attribute__((used)) static void
  otv_SinglePos_validate( FT_Bytes table,
                          OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt PosFormat;


    OTV_NAME_ENTER( "SinglePos" );

    OTV_LIMIT_CHECK( 2 );
    PosFormat = FT_NEXT_USHORT( p );

    OTV_TRACE(( " (format %d)\n", PosFormat ));

    otvalid->extra3 = table;

    switch ( PosFormat )
    {
    case 1:
      {
        FT_UInt Coverage, ValueFormat;


        OTV_LIMIT_CHECK( 4 );
        Coverage = FT_NEXT_USHORT( p );
        ValueFormat = FT_NEXT_USHORT( p );

        otv_Coverage_validate( table + Coverage, otvalid, -1 );
        otv_ValueRecord_validate( p, ValueFormat, otvalid );
      }
      break;

    case 2:
      {
        FT_UInt Coverage, ValueFormat, ValueCount, len_value;


        OTV_LIMIT_CHECK( 6 );
        Coverage = FT_NEXT_USHORT( p );
        ValueFormat = FT_NEXT_USHORT( p );
        ValueCount = FT_NEXT_USHORT( p );

        OTV_TRACE(( " (ValueCount = %d)\n", ValueCount ));

        len_value = otv_value_length( ValueFormat );

        otv_Coverage_validate( table + Coverage,
                               otvalid,
                               (FT_Int)ValueCount );

        OTV_LIMIT_CHECK( ValueCount * len_value );


        for ( ; ValueCount > 0; ValueCount-- )
        {
          otv_ValueRecord_validate( p, ValueFormat, otvalid );
          p += len_value;
        }
      }
      break;

    default:
      FT_INVALID_FORMAT;
    }

    OTV_EXIT;
  }
