
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int row_section_t ;
typedef int point_t ;
struct TYPE_4__ {TYPE_3__* ps_piece_shape_row; } ;
typedef TYPE_1__ piece_shape_t ;
typedef size_t int8_t ;
typedef scalar_t__ int32_t ;
typedef int filter_t ;
struct TYPE_5__ {size_t i_section_nbr; size_t i_type; scalar_t__ i_width; struct TYPE_5__* ps_row_section; } ;


 int MAX_SECT ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int free (TYPE_3__*) ;
 void* malloc (int) ;


 size_t puzzle_detect_curve (int *,scalar_t__,float,float,int *,size_t,size_t,size_t,scalar_t__*) ;
 scalar_t__ puzzle_diagonal_limit (int *,scalar_t__,int,size_t) ;

int puzzle_generate_shape_lines( filter_t *p_filter, piece_shape_t *ps_piece_shape, int32_t i_min_y, int32_t i_nb_y, float f_x_ratio, float f_y_ratio, point_t *ps_pt, uint8_t i_pts_nbr, uint8_t i_border, uint8_t i_plane)
{

    for (int32_t i_y = i_min_y; i_y < i_nb_y + i_min_y; i_y++) {
        int32_t i_row = i_y - i_min_y;

        int32_t pi_sects[MAX_SECT];

        uint8_t i_sect = puzzle_detect_curve( p_filter, i_y, f_x_ratio, f_y_ratio, ps_pt, i_pts_nbr, i_border, i_plane, pi_sects);


        int8_t i_s = 0;
        int32_t i_last_x = (i_border==128 && (i_y>=0))?puzzle_diagonal_limit( p_filter, i_y, 1, i_plane ):0;

        for (i_s = 0; i_s<i_sect; i_s++) {
            int32_t i_current_x = pi_sects[i_s];
            int32_t i_delta = i_current_x - i_last_x;
            pi_sects[i_s] = i_delta;

            i_last_x = i_current_x;
        }

        switch (i_border)
        {
          case 128:


            if ( i_y >= 0 ) {
                ps_piece_shape->ps_piece_shape_row[i_row].i_section_nbr = i_sect;
                ps_piece_shape->ps_piece_shape_row[i_row].ps_row_section = malloc ( sizeof(row_section_t) * i_sect);
                if (!ps_piece_shape->ps_piece_shape_row[i_row].ps_row_section) {
                    for (uint8_t i=0; i<i_row;i++)
                        free(ps_piece_shape->ps_piece_shape_row[i].ps_row_section);
                    free(ps_piece_shape->ps_piece_shape_row);
                    ps_piece_shape->ps_piece_shape_row = ((void*)0);
                    return VLC_ENOMEM;
                }
                for (uint8_t i=0; i < i_sect; i++) {
                    ps_piece_shape->ps_piece_shape_row[i_row].ps_row_section[i].i_type = i % 2;
                    ps_piece_shape->ps_piece_shape_row[i_row].ps_row_section[i].i_width = pi_sects[i];
                }
            }
            else {
                ps_piece_shape->ps_piece_shape_row[i_row].i_section_nbr = i_sect;
                ps_piece_shape->ps_piece_shape_row[i_row].ps_row_section = malloc ( sizeof(row_section_t) * i_sect);
                if (!ps_piece_shape->ps_piece_shape_row[i_row].ps_row_section) {
                    for (uint8_t i=0; i<i_row;i++)
                        free(ps_piece_shape->ps_piece_shape_row[i].ps_row_section);
                    free(ps_piece_shape->ps_piece_shape_row);
                    ps_piece_shape->ps_piece_shape_row = ((void*)0);
                    return VLC_ENOMEM;
                }
                for (uint8_t i=0; i < i_sect; i++) {
                    ps_piece_shape->ps_piece_shape_row[i_row].ps_row_section[i].i_type = (i + 1) % 2;
                    ps_piece_shape->ps_piece_shape_row[i_row].ps_row_section[i].i_width = pi_sects[i];
                }
            }
            break;
          case 129:


            ps_piece_shape->ps_piece_shape_row[i_row].i_section_nbr = i_sect;
            ps_piece_shape->ps_piece_shape_row[i_row].ps_row_section = malloc ( sizeof(row_section_t) * i_sect);
            if (!ps_piece_shape->ps_piece_shape_row[i_row].ps_row_section) {
                for (uint8_t i=0; i<i_row;i++)
                    free(ps_piece_shape->ps_piece_shape_row[i].ps_row_section);
                free(ps_piece_shape->ps_piece_shape_row);
                ps_piece_shape->ps_piece_shape_row = ((void*)0);
                return VLC_ENOMEM;
            }
            for (uint8_t i=0; i < i_sect; i++) {
                ps_piece_shape->ps_piece_shape_row[i_row].ps_row_section[i].i_type = (i+1) % 2;
                ps_piece_shape->ps_piece_shape_row[i_row].ps_row_section[i].i_width = pi_sects[i];
            }
        }
    }
    return VLC_SUCCESS;
}
