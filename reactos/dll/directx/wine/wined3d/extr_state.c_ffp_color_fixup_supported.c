
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct color_fixup_desc {int dummy; } ;
typedef int BOOL ;


 int is_identity_fixup (struct color_fixup_desc) ;

__attribute__((used)) static BOOL ffp_color_fixup_supported(struct color_fixup_desc fixup)
{

    return is_identity_fixup(fixup);
}
