
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filter_t ;


 int mmult (double*,double*,double*) ;
 int msg_Dbg (int *,char*,...) ;
 double sqrt (double) ;

__attribute__((used)) static void make_projection_matrix( filter_t *p_filter, int color, int *matrix )
{
    double left_matrix[9] =
        { 76.24500, 149.68500, 29.07000,
          -43.02765, -84.47235, 127.50000,
          127.50000, -106.76534, -20.73466 };
    double right_matrix[9] =
        { 257.00392, 0.00000, 360.31950,
          257.00392, -88.44438, -183.53583,
          257.00392, 455.41095, 0.00000 };
    double red = ((double)(( 0xFF0000 & color )>>16))/255.;
    double green = ((double)(( 0x00FF00 & color )>>8))/255.;
    double blue = ((double)( 0x0000FF & color ))/255.;
    double norm = sqrt( red*red + green*green + blue*blue );
    if( norm > 0 )
    {
        red /= norm;
        green /= norm;
        blue /= norm;
    }

    double rgb_matrix[9] =
        { red*red, red*green, red*blue,
          red*green, green*green, green*blue,
          red*blue, green*blue, blue*blue };
    double result1[9];
    double result[9];
    msg_Dbg( p_filter, "red: %f", red );
    msg_Dbg( p_filter, "green: %f", green );
    msg_Dbg( p_filter, "blue: %f", blue );
    mmult( result1, rgb_matrix, right_matrix );
    mmult( result, left_matrix, result1 );
    for( int i = 0; i < 9; i++ )
    {
        matrix[i] = (int)result[i];
    }
    msg_Dbg( p_filter, "Projection matrix:" );
    msg_Dbg( p_filter, "%6d %6d %6d", matrix[0], matrix[1], matrix[2] );
    msg_Dbg( p_filter, "%6d %6d %6d", matrix[3], matrix[4], matrix[5] );
    msg_Dbg( p_filter, "%6d %6d %6d", matrix[6], matrix[7], matrix[8] );
}
