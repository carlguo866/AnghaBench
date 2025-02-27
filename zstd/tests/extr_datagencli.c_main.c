
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U64 ;
typedef int U32 ;


 unsigned int COMPRESSIBILITY_DEFAULT ;
 int DISPLAYLEVEL (int,char*,...) ;
 int RDG_genStdout (int,double,double,int) ;
 int SEED_DEFAULT ;
 int SIZE_DEFAULT ;
 int displayLevel ;
 int usage (char const* const) ;

int main(int argc, const char** argv)
{
    unsigned probaU32 = COMPRESSIBILITY_DEFAULT;
    double litProba = 0.0;
    U64 size = SIZE_DEFAULT;
    U32 seed = SEED_DEFAULT;
    const char* const programName = argv[0];

    int argNb;
    for(argNb=1; argNb<argc; argNb++) {
        const char* argument = argv[argNb];

        if(!argument) continue;


        if (*argument=='-') {
            argument++;
            while (*argument!=0) {
                switch(*argument)
                {
                case 'h':
                    return usage(programName);
                case 'g':
                    argument++;
                    size=0;
                    while ((*argument>='0') && (*argument<='9'))
                        size *= 10, size += *argument++ - '0';
                    if (*argument=='K') { size <<= 10; argument++; }
                    if (*argument=='M') { size <<= 20; argument++; }
                    if (*argument=='G') { size <<= 30; argument++; }
                    if (*argument=='B') { argument++; }
                    break;
                case 's':
                    argument++;
                    seed=0;
                    while ((*argument>='0') && (*argument<='9'))
                        seed *= 10, seed += *argument++ - '0';
                    break;
                case 'P':
                    argument++;
                    probaU32 = 0;
                    while ((*argument>='0') && (*argument<='9'))
                        probaU32 *= 10, probaU32 += *argument++ - '0';
                    if (probaU32>100) probaU32 = 100;
                    break;
                case 'L':
                    argument++;
                    litProba=0.;
                    while ((*argument>='0') && (*argument<='9'))
                        litProba *= 10, litProba += *argument++ - '0';
                    if (litProba>100.) litProba=100.;
                    litProba /= 100.;
                    break;
                case 'v':
                    displayLevel = 4;
                    argument++;
                    break;
                default:
                    return usage(programName);
                }
    } } }

    DISPLAYLEVEL(4, "Compressible data Generator \n");
    if (probaU32!=COMPRESSIBILITY_DEFAULT)
        DISPLAYLEVEL(3, "Compressibility : %i%%\n", probaU32);
    DISPLAYLEVEL(3, "Seed = %u \n", (unsigned)seed);

    RDG_genStdout(size, (double)probaU32/100, litProba, seed);
    DISPLAYLEVEL(1, "\n");

    return 0;
}
