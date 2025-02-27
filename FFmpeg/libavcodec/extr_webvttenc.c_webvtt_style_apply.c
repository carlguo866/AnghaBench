
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ass_ctx; } ;
typedef TYPE_1__ WebVTTContext ;
struct TYPE_8__ {scalar_t__ bold; scalar_t__ italic; scalar_t__ underline; } ;
typedef TYPE_2__ ASSStyle ;


 scalar_t__ ASS_DEFAULT_BOLD ;
 scalar_t__ ASS_DEFAULT_ITALIC ;
 scalar_t__ ASS_DEFAULT_UNDERLINE ;
 TYPE_2__* ff_ass_style_get (int ,char const*) ;
 int webvtt_print (TYPE_1__*,char*) ;
 int webvtt_stack_push (TYPE_1__*,unsigned char) ;

__attribute__((used)) static void webvtt_style_apply(WebVTTContext *s, const char *style)
{
    ASSStyle *st = ff_ass_style_get(s->ass_ctx, style);
    if (st) {
        if (st->bold != ASS_DEFAULT_BOLD) {
            webvtt_print(s, "<b>");
            webvtt_stack_push(s, 'b');
        }
        if (st->italic != ASS_DEFAULT_ITALIC) {
            webvtt_print(s, "<i>");
            webvtt_stack_push(s, 'i');
        }
        if (st->underline != ASS_DEFAULT_UNDERLINE) {
            webvtt_print(s, "<u>");
            webvtt_stack_push(s, 'u');
        }
    }
}
