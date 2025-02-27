
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8 ;
typedef int int8 ;
typedef void* flag ;
struct TYPE_2__ {char* name; int numInputs; } ;


 int EXIT_SUCCESS ;
 void* FALSE ;
 size_t NUM_FUNCTIONS ;
 int ROUND_DOWN ;
 int ROUND_NEAREST_EVEN ;
 int ROUND_TO_ZERO ;
 int ROUND_UP ;
 int SIGINT ;
 int SIGTERM ;
 void* TRUE ;
 int atoi (char*) ;
 int catchSIGINT ;
 void* checkNaNs ;
 void* errorStop ;
 int exitWithStatus () ;
 int fail (char*,...) ;
 char* fail_programName ;
 int float_detect_tininess ;
 int float_exception_flags ;
 int float_tininess_after_rounding ;
 int float_tininess_before_rounding ;
 void* forever ;
 int fputs (char*,int ) ;
 scalar_t__* functionExists ;
 TYPE_1__* functions ;
 int maxErrorCount ;
 int puts (char*) ;
 int signal (int ,int ) ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int syst_float_flags_clear ;
 int testCases_setLevel (int) ;
 int testFlagsFunctionPtr ;
 int testFunction (size_t,int,int) ;
 char* testName ;
 scalar_t__ tininessModeName ;
 int * trueFlagsPtr ;
 char* trueName ;

int
main( int argc, char **argv )
{
    char *argPtr;
    flag functionArgument;
    uint8 functionCode;
    int8 operands, roundingPrecision, roundingMode;

    fail_programName = "testfloat";
    if ( argc <= 1 ) goto writeHelpMessage;
    testCases_setLevel( 1 );
    trueName = "soft";
    testName = "syst";
    errorStop = FALSE;
    forever = FALSE;
    maxErrorCount = 20;
    trueFlagsPtr = &float_exception_flags;
    testFlagsFunctionPtr = syst_float_flags_clear;
    tininessModeName = 0;
    functionArgument = FALSE;
    functionCode = 0;
    operands = 0;
    roundingPrecision = 0;
    roundingMode = 0;
    --argc;
    ++argv;
    while ( argc && ( argPtr = argv[ 0 ] ) ) {
        if ( argPtr[ 0 ] == '-' ) ++argPtr;
        if ( strcmp( argPtr, "help" ) == 0 ) {
 writeHelpMessage:
            fputs(
"testfloat [<option>...] <function>\n"
"  <option>:  (* is default)\n"
"    -help            --Write this message and exit.\n"
"    -list            --List all testable functions and exit.\n"
"    -level <num>     --Testing level <num> (1 or 2).\n"
" *  -level 1\n"
"    -errors <num>    --Stop each function test after <num> errors.\n"
" *  -errors 20\n"
"    -errorstop       --Exit after first function with any error.\n"
"    -forever         --Test one function repeatedly (implies `-level 2').\n"
"    -checkNaNs       --Check for bitwise correctness of NaN results.\n"





"    -nearesteven     --Only test rounding to nearest/even.\n"
"    -tozero          --Only test rounding to zero.\n"
"    -down            --Only test rounding down.\n"
"    -up              --Only test rounding up.\n"
"    -tininessbefore  --Underflow tininess detected before rounding.\n"
"    -tininessafter   --Underflow tininess detected after rounding.\n"
"  <function>:\n"
"    int32_to_<float>                 <float>_add   <float>_eq\n"
"    <float>_to_int32                 <float>_sub   <float>_le\n"
"    <float>_to_int32_round_to_zero   <float>_mul   <float>_lt\n"
"    <float>_to_<float>               <float>_div   <float>_eq_signaling\n"
"    <float>_round_to_int             <float>_rem   <float>_le_quiet\n"
"    <float>_sqrt                                   <float>_lt_quiet\n"

"    -all1            --All 1-operand functions.\n"
"    -all2            --All 2-operand functions.\n"
"    -all             --All functions.\n"
"  <float>:\n"
"    float32          --Single precision.\n"
"    float64          --Double precision.\n"






                ,
                stdout
            );
            return EXIT_SUCCESS;
        }
        else if ( strcmp( argPtr, "list" ) == 0 ) {
            for ( functionCode = 1;
                  functionCode < NUM_FUNCTIONS;
                  ++functionCode
                ) {
                if ( functionExists[ functionCode ] ) {
                    puts( functions[ functionCode ].name );
                }
            }
            return EXIT_SUCCESS;
        }
        else if ( strcmp( argPtr, "level" ) == 0 ) {
            if ( argc < 2 ) goto optionError;
            testCases_setLevel( atoi( argv[ 1 ] ) );
            --argc;
            ++argv;
        }
        else if ( strcmp( argPtr, "level1" ) == 0 ) {
            testCases_setLevel( 1 );
        }
        else if ( strcmp( argPtr, "level2" ) == 0 ) {
            testCases_setLevel( 2 );
        }
        else if ( strcmp( argPtr, "errors" ) == 0 ) {
            if ( argc < 2 ) {
     optionError:
                fail( "`%s' option requires numeric argument", argv[ 0 ] );
            }
            maxErrorCount = atoi( argv[ 1 ] );
            --argc;
            ++argv;
        }
        else if ( strcmp( argPtr, "errorstop" ) == 0 ) {
            errorStop = TRUE;
        }
        else if ( strcmp( argPtr, "forever" ) == 0 ) {
            testCases_setLevel( 2 );
            forever = TRUE;
        }
        else if ( ( strcmp( argPtr, "checkNaNs" ) == 0 )
                  || ( strcmp( argPtr, "checknans" ) == 0 ) ) {
            checkNaNs = TRUE;
        }
        else if ( ( strcmp( argPtr, "nearesteven" ) == 0 )
                  || ( strcmp( argPtr, "nearest_even" ) == 0 ) ) {
            roundingMode = ROUND_NEAREST_EVEN;
        }
        else if ( ( strcmp( argPtr, "tozero" ) == 0 )
                  || ( strcmp( argPtr, "to_zero" ) == 0 ) ) {
            roundingMode = ROUND_TO_ZERO;
        }
        else if ( strcmp( argPtr, "down" ) == 0 ) {
            roundingMode = ROUND_DOWN;
        }
        else if ( strcmp( argPtr, "up" ) == 0 ) {
            roundingMode = ROUND_UP;
        }
        else if ( strcmp( argPtr, "tininessbefore" ) == 0 ) {
            float_detect_tininess = float_tininess_before_rounding;
        }
        else if ( strcmp( argPtr, "tininessafter" ) == 0 ) {
            float_detect_tininess = float_tininess_after_rounding;
        }
        else if ( strcmp( argPtr, "all1" ) == 0 ) {
            functionArgument = TRUE;
            functionCode = 0;
            operands = 1;
        }
        else if ( strcmp( argPtr, "all2" ) == 0 ) {
            functionArgument = TRUE;
            functionCode = 0;
            operands = 2;
        }
        else if ( strcmp( argPtr, "all" ) == 0 ) {
            functionArgument = TRUE;
            functionCode = 0;
            operands = 0;
        }
        else {
            for ( functionCode = 1;
                  functionCode < NUM_FUNCTIONS;
                  ++functionCode
                ) {
                if ( strcmp( argPtr, functions[ functionCode ].name ) == 0 ) {
                    break;
                }
            }
            if ( functionCode == NUM_FUNCTIONS ) {
                fail( "Invalid option or function `%s'", argv[ 0 ] );
            }
            if ( ! functionExists[ functionCode ] ) {
                fail(
                    "Function `%s' is not supported or cannot be tested",
                    argPtr
                );
            }
            functionArgument = TRUE;
        }
        --argc;
        ++argv;
    }
    if ( ! functionArgument ) fail( "Function argument required" );
    (void) signal( SIGINT, catchSIGINT );
    (void) signal( SIGTERM, catchSIGINT );
    if ( functionCode ) {
        if ( forever ) {
            if ( ! roundingPrecision ) roundingPrecision = 80;
            if ( ! roundingMode ) roundingMode = ROUND_NEAREST_EVEN;
        }
        testFunction( functionCode, roundingPrecision, roundingMode );
    }
    else {
        if ( forever ) {
            fail( "Can only test one function with `-forever' option" );
        }
        if ( operands == 1 ) {
            for ( functionCode = 1;
                  functionCode < NUM_FUNCTIONS;
                  ++functionCode
                ) {
                if ( functionExists[ functionCode ]
                     && ( functions[ functionCode ].numInputs == 1 ) ) {
                    testFunction(
                        functionCode, roundingPrecision, roundingMode );
                }
            }
        }
        else if ( operands == 2 ) {
            for ( functionCode = 1;
                  functionCode < NUM_FUNCTIONS;
                  ++functionCode
                ) {
                if ( functionExists[ functionCode ]
                     && ( functions[ functionCode ].numInputs == 2 ) ) {
                    testFunction(
                        functionCode, roundingPrecision, roundingMode );
                }
            }
        }
        else {
            for ( functionCode = 1;
                  functionCode < NUM_FUNCTIONS;
                  ++functionCode
                ) {
                if ( functionExists[ functionCode ] ) {
                    testFunction(
                        functionCode, roundingPrecision, roundingMode );
                }
            }
        }
    }
    exitWithStatus();

}
