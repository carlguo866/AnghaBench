
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 scalar_t__ wpabuf_head (struct wpabuf const*) ;

__attribute__((used)) static inline const u8 * wpabuf_head_u8(const struct wpabuf *buf)
{
 return (const u8 *) wpabuf_head(buf);
}
