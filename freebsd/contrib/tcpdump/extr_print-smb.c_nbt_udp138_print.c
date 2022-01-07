
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int const u_char ;
struct TYPE_6__ {int ndo_vflag; int const* ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 scalar_t__ memcmp (int const*,char*,int) ;
 int print_smb (TYPE_1__*,int const*,int const*) ;
 int const* smb_fdata (TYPE_1__*,int const*,char*,int const*,int ) ;
 int const* startbuf ;

void
nbt_udp138_print(netdissect_options *ndo,
                 const u_char *data, int length)
{
    const u_char *maxbuf = data + length;

    if (maxbuf > ndo->ndo_snapend)
 maxbuf = ndo->ndo_snapend;
    if (maxbuf <= data)
 return;
    startbuf = data;

    if (ndo->ndo_vflag < 2) {
 ND_PRINT((ndo, "NBT UDP PACKET(138)"));
 return;
    }

    data = smb_fdata(ndo, data,
 "\n>>> NBT UDP PACKET(138) Res=[rw] ID=[rw] IP=[b.b.b.b] Port=[rd] Length=[rd] Res2=[rw]\nSourceName=[n1]\nDestName=[n1]\n#",
 maxbuf, 0);

    if (data != ((void*)0)) {

 if (&data[3] >= maxbuf)
     goto out;

 if (memcmp(data, "\377SMB",4) == 0)
     print_smb(ndo, data, maxbuf);
    }
out:
    ND_PRINT((ndo, "\n"));
}
