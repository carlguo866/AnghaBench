
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int l_ui; int l_uf; } ;
typedef TYPE_1__ l_fp ;


 int CreatePath (char*,int ) ;
 int FinishDebugTest (int ,char*) ;
 int HTONL_FP (TYPE_1__*,TYPE_1__*) ;
 int INPUT_DIR ;
 int InitDebugTest (char*) ;
 int l_fp_output_dec (TYPE_1__*,int ) ;
 int outputFile ;

void
test_LfpOutputDecimalFormat(void) {
 char * filename = "debug-output-lfp-dec";
 InitDebugTest(filename);

 l_fp test;
 test.l_ui = 6310;
 test.l_uf = 308502;

 l_fp network;
 HTONL_FP(&test, &network);

 l_fp_output_dec(&network, outputFile);

 FinishDebugTest(CreatePath("debug-input-lfp-dec", INPUT_DIR), filename);
}
