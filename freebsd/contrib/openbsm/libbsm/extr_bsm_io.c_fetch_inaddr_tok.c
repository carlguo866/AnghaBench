
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {TYPE_1__ inaddr; } ;
struct TYPE_7__ {int len; TYPE_2__ tt; } ;
typedef TYPE_3__ tokenstr_t ;


 int READ_TOKEN_BYTES (int *,int,int *,int,int ,int) ;

__attribute__((used)) static int
fetch_inaddr_tok(tokenstr_t *tok, u_char *buf, int len)
{
 int err = 0;

 READ_TOKEN_BYTES(buf, len, &tok->tt.inaddr.addr, sizeof(uint32_t),
     tok->len, err);
 if (err)
  return (-1);

 return (0);

}
