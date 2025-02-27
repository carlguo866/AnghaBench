
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ai_qp_type; int ai_port_space; int ai_flags; } ;


 int IBV_QPT_RC ;
 int IBV_QPT_XRC_RECV ;
 int RAI_PASSIVE ;
 int RDMA_PS_IB ;
 int RDMA_PS_TCP ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 TYPE_1__ hints ;
 int * optarg ;
 int * port ;
 int printf (char*,...) ;
 int test () ;
 int tolower (int ) ;

int main(int argc, char **argv)
{
 int op, ret;

 hints.ai_flags = RAI_PASSIVE;
 hints.ai_port_space = RDMA_PS_TCP;
 hints.ai_qp_type = IBV_QPT_RC;

 while ((op = getopt(argc, argv, "p:c:")) != -1) {
  switch (op) {
  case 'p':
   port = optarg;
   break;
  case 'c':
   switch (tolower(optarg[0])) {
   case 'r':
    break;
   case 'x':
    hints.ai_port_space = RDMA_PS_IB;
    hints.ai_qp_type = IBV_QPT_XRC_RECV;
    break;
   default:
    goto err;
   }
   break;
  default:
   goto err;
  }
 }

 printf("%s: start\n", argv[0]);
 ret = test();
 printf("%s: end %d\n", argv[0], ret);
 return ret;

err:
 printf("usage: %s\n", argv[0]);
 printf("\t[-p port_number]\n");
 printf("\t[-c communication type]\n");
 printf("\t    r - RC: reliable-connected (default)\n");
 printf("\t    x - XRC: extended-reliable-connected\n");
 exit(1);
}
