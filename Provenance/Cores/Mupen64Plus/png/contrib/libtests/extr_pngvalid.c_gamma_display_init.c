
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int png_uint_32 ;
struct TYPE_5__ {int use_update_info; int this; } ;
typedef TYPE_1__ png_modifier ;
typedef int png_color_16 ;
typedef int png_byte ;
struct TYPE_6__ {double file_gamma; double screen_gamma; double background_gamma; int threshold_test; int use_input_precision; int scale16; int expand16; int do_background; scalar_t__ maxerrabs; scalar_t__ maxerrpc; scalar_t__ maxerrout; int background_color; int sbit; TYPE_1__* pm; int this; } ;
typedef TYPE_2__ gamma_display ;


 int do_read_interlace ;
 int memset (int *,int ,int) ;
 int standard_display_init (int *,int *,int ,int ,int ) ;

__attribute__((used)) static void
gamma_display_init(gamma_display *dp, png_modifier *pm, png_uint_32 id,
    double file_gamma, double screen_gamma, png_byte sbit, int threshold_test,
    int use_input_precision, int scale16, int expand16,
    int do_background, const png_color_16 *pointer_to_the_background_color,
    double background_gamma)
{

   standard_display_init(&dp->this, &pm->this, id, do_read_interlace,
      pm->use_update_info);


   dp->pm = pm;
   dp->file_gamma = file_gamma;
   dp->screen_gamma = screen_gamma;
   dp->background_gamma = background_gamma;
   dp->sbit = sbit;
   dp->threshold_test = threshold_test;
   dp->use_input_precision = use_input_precision;
   dp->scale16 = scale16;
   dp->expand16 = expand16;
   dp->do_background = do_background;
   if (do_background && pointer_to_the_background_color != 0)
      dp->background_color = *pointer_to_the_background_color;
   else
      memset(&dp->background_color, 0, sizeof dp->background_color);


   dp->maxerrout = dp->maxerrpc = dp->maxerrabs = 0;
}
