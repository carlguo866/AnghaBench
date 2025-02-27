
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
typedef int DWORD ;


 int WINED3DSUF_GLOBALLY_COHERENT ;
 int WINED3DSUF_ORDER_PRESERVING_COUNTER ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;

__attribute__((used)) static void shader_dump_uav_flags(struct wined3d_string_buffer *buffer, DWORD uav_flags)
{
    if (uav_flags & WINED3DSUF_GLOBALLY_COHERENT)
    {
        shader_addline(buffer, "_glc");
        uav_flags &= ~WINED3DSUF_GLOBALLY_COHERENT;
    }
    if (uav_flags & WINED3DSUF_ORDER_PRESERVING_COUNTER)
    {
        shader_addline(buffer, "_opc");
        uav_flags &= ~WINED3DSUF_ORDER_PRESERVING_COUNTER;
    }

    if (uav_flags)
        shader_addline(buffer, "_unknown_flags(%#x)", uav_flags);
}
