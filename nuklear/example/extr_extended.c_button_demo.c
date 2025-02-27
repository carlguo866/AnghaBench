
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nk_context {int dummy; } ;
struct media {TYPE_3__* font_14; int edit; int convert; int del; int copy; TYPE_2__* font_18; int unchecked; int checked; int rocket; int pen; int cloud; int tools; int prev; int next; int pause; int stop; int play; TYPE_1__* font_20; } ;
struct TYPE_6__ {int handle; } ;
struct TYPE_5__ {int handle; } ;
struct TYPE_4__ {int handle; } ;


 int NK_SYMBOL_CIRCLE_OUTLINE ;
 int NK_SYMBOL_CIRCLE_SOLID ;
 int NK_TEXT_CENTERED ;
 int NK_TEXT_LEFT ;
 int NK_TEXT_RIGHT ;
 int NK_WINDOW_BORDER ;
 int NK_WINDOW_MOVABLE ;
 int NK_WINDOW_NO_SCROLLBAR ;
 int NK_WINDOW_TITLE ;
 int fprintf (int ,char*) ;
 int nk_begin (struct nk_context*,char*,int ,int) ;
 int nk_button_image (struct nk_context*,int ) ;
 scalar_t__ nk_button_image_label (struct nk_context*,int ,char*,int ) ;
 scalar_t__ nk_button_label (struct nk_context*,char*) ;
 scalar_t__ nk_button_symbol_label (struct nk_context*,int ,char*,int ) ;
 scalar_t__ nk_contextual_begin (struct nk_context*,int ,int ,int ) ;
 int nk_contextual_end (struct nk_context*) ;
 scalar_t__ nk_contextual_item_image_label (struct nk_context*,int ,char*,int ) ;
 int nk_end (struct nk_context*) ;
 int nk_layout_row_dynamic (struct nk_context*,int,int) ;
 int nk_layout_row_static (struct nk_context*,int,int,int) ;
 scalar_t__ nk_menu_begin_image (struct nk_context*,char*,int ,int ) ;
 int nk_menu_end (struct nk_context*) ;
 int nk_menu_item_image_label (struct nk_context*,int ,char*,int ) ;
 int nk_menubar_begin (struct nk_context*) ;
 int nk_menubar_end (struct nk_context*) ;
 int nk_rect (int,int,int,int) ;
 int nk_style_set_font (struct nk_context*,int *) ;
 int nk_vec2 (int,int) ;
 int nk_window_get_bounds (struct nk_context*) ;
 int stdout ;
 int ui_header (struct nk_context*,struct media*,char*) ;
 int ui_widget (struct nk_context*,struct media*,int) ;

__attribute__((used)) static void
button_demo(struct nk_context *ctx, struct media *media)
{
    static int option = 1;
    static int toggle0 = 1;
    static int toggle1 = 0;
    static int toggle2 = 1;

    nk_style_set_font(ctx, &media->font_20->handle);
    nk_begin(ctx, "Button Demo", nk_rect(50,50,255,610),
        NK_WINDOW_BORDER|NK_WINDOW_MOVABLE|NK_WINDOW_TITLE);




    nk_menubar_begin(ctx);
    {

        nk_layout_row_static(ctx, 40, 40, 4);
        if (nk_menu_begin_image(ctx, "Music", media->play, nk_vec2(110,120)))
        {

            nk_layout_row_dynamic(ctx, 25, 1);
            nk_menu_item_image_label(ctx, media->play, "Play", NK_TEXT_RIGHT);
            nk_menu_item_image_label(ctx, media->stop, "Stop", NK_TEXT_RIGHT);
            nk_menu_item_image_label(ctx, media->pause, "Pause", NK_TEXT_RIGHT);
            nk_menu_item_image_label(ctx, media->next, "Next", NK_TEXT_RIGHT);
            nk_menu_item_image_label(ctx, media->prev, "Prev", NK_TEXT_RIGHT);
            nk_menu_end(ctx);
        }
        nk_button_image(ctx, media->tools);
        nk_button_image(ctx, media->cloud);
        nk_button_image(ctx, media->pen);
    }
    nk_menubar_end(ctx);




    ui_header(ctx, media, "Push buttons");
    ui_widget(ctx, media, 35);
    if (nk_button_label(ctx, "Push me"))
        fprintf(stdout, "pushed!\n");
    ui_widget(ctx, media, 35);
    if (nk_button_image_label(ctx, media->rocket, "Styled", NK_TEXT_CENTERED))
        fprintf(stdout, "rocket!\n");




    ui_header(ctx, media, "Repeater");
    ui_widget(ctx, media, 35);
    if (nk_button_label(ctx, "Press me"))
        fprintf(stdout, "pressed!\n");




    ui_header(ctx, media, "Toggle buttons");
    ui_widget(ctx, media, 35);
    if (nk_button_image_label(ctx, (toggle0) ? media->checked: media->unchecked, "Toggle", NK_TEXT_LEFT))
        toggle0 = !toggle0;

    ui_widget(ctx, media, 35);
    if (nk_button_image_label(ctx, (toggle1) ? media->checked: media->unchecked, "Toggle", NK_TEXT_LEFT))
        toggle1 = !toggle1;

    ui_widget(ctx, media, 35);
    if (nk_button_image_label(ctx, (toggle2) ? media->checked: media->unchecked, "Toggle", NK_TEXT_LEFT))
        toggle2 = !toggle2;




    ui_header(ctx, media, "Radio buttons");
    ui_widget(ctx, media, 35);
    if (nk_button_symbol_label(ctx, (option == 0)?NK_SYMBOL_CIRCLE_OUTLINE:NK_SYMBOL_CIRCLE_SOLID, "Select", NK_TEXT_LEFT))
        option = 0;
    ui_widget(ctx, media, 35);
    if (nk_button_symbol_label(ctx, (option == 1)?NK_SYMBOL_CIRCLE_OUTLINE:NK_SYMBOL_CIRCLE_SOLID, "Select", NK_TEXT_LEFT))
        option = 1;
    ui_widget(ctx, media, 35);
    if (nk_button_symbol_label(ctx, (option == 2)?NK_SYMBOL_CIRCLE_OUTLINE:NK_SYMBOL_CIRCLE_SOLID, "Select", NK_TEXT_LEFT))
        option = 2;




    nk_style_set_font(ctx, &media->font_18->handle);
    if (nk_contextual_begin(ctx, NK_WINDOW_NO_SCROLLBAR, nk_vec2(150, 300), nk_window_get_bounds(ctx))) {
        nk_layout_row_dynamic(ctx, 30, 1);
        if (nk_contextual_item_image_label(ctx, media->copy, "Clone", NK_TEXT_RIGHT))
            fprintf(stdout, "pressed clone!\n");
        if (nk_contextual_item_image_label(ctx, media->del, "Delete", NK_TEXT_RIGHT))
            fprintf(stdout, "pressed delete!\n");
        if (nk_contextual_item_image_label(ctx, media->convert, "Convert", NK_TEXT_RIGHT))
            fprintf(stdout, "pressed convert!\n");
        if (nk_contextual_item_image_label(ctx, media->edit, "Edit", NK_TEXT_RIGHT))
            fprintf(stdout, "pressed edit!\n");
        nk_contextual_end(ctx);
    }
    nk_style_set_font(ctx, &media->font_14->handle);
    nk_end(ctx);
}
