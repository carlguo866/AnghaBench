
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int point_t ;
typedef int int32_t ;


 int free (int *) ;
 int * puzzle_curve_H_2_V (int ,int *) ;
 int * puzzle_scale_curve_H (int ,int ,int ,int *,int ) ;

point_t *puzzle_H_2_scale_curve_V(int32_t i_width, int32_t i_lines, uint8_t i_pts_nbr, point_t *ps_pt, int32_t i_shape_size)
{
    if (ps_pt == ((void*)0))
        return ((void*)0);

    point_t *ps_bezier_scale_H = puzzle_scale_curve_H(i_lines, i_width, i_pts_nbr, ps_pt, i_shape_size);
    point_t *ps_pts_V = puzzle_curve_H_2_V(i_pts_nbr, ps_bezier_scale_H);
    free(ps_bezier_scale_H);

    return ps_pts_V;
}
