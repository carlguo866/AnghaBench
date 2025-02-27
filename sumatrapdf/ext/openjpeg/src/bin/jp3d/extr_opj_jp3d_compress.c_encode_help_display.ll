; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp3d/extr_opj_jp3d_compress.c_encode_help_display.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp3d/extr_opj_jp3d_compress.c_encode_help_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"List of parameters for the JPEG2000 Part 10 encoder:\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"------------\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Required Parameters (except with -h):\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"-i           : source file  (-i source.bin or source*.pgx) \0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"-m           : source characteristics file (-m imgfile.img) \0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"-o           : destination file (-o dest.jp3d) \0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Optional Parameters:\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"-h           : display the help information \0A \00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"-n           : number of resolutions (-n 3,3,3) \0A\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"-I           : use the irreversible transforms: ICT + DWT 9-7 (-I) \0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"-C           : coding algorithm (-C 2EB) [2EB, 3EB] \0A\00", align 1
@.str.12 = private unnamed_addr constant [81 x i8] c"-r           : different compression ratios for successive layers (-r 20,10,5)\0A \00", align 1
@.str.13 = private unnamed_addr constant [90 x i8] c"\09         - The rate specified for each quality level is the desired compression factor.\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"\09         - Rate 1 means lossless compression\0A\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"               (options -r and -q cannot be used together)\0A \00", align 1
@.str.16 = private unnamed_addr constant [69 x i8] c"-q           : different psnr for successive layers (-q 30,40,50) \0A \00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"-b           : size of code block (-b 32,32,32) \0A\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"-c           : size of precinct (-c 128,128,128) \0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"-t           : size of tile (-t 512,512,512) \0A\00", align 1
@.str.20 = private unnamed_addr constant [76 x i8] c"-p           : progression order (-p LRCP) [LRCP, RLCP, RPCL, PCRL, CPRL] \0A\00", align 1
@.str.21 = private unnamed_addr constant [58 x i8] c"-s           : subsampling factor (-s 2,2,2) [-s X,Y,Z] \0A\00", align 1
@.str.22 = private unnamed_addr constant [60 x i8] c"\09\09\09  - Remark: subsampling bigger than 2 can produce error\0A\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"-SOP         : write SOP marker before each packet \0A\00", align 1
@.str.24 = private unnamed_addr constant [59 x i8] c"-EPH         : write EPH marker after each header packet \0A\00", align 1
@.str.25 = private unnamed_addr constant [83 x i8] c"-M           : code-block style (-M 0) [1=BYPASS(LAZY) 2=RESET 4=RESTART(TERMALL)\0A\00", align 1
@.str.26 = private unnamed_addr constant [55 x i8] c"                 8=VSC 16=PTERM 32=SEGSYM 64=3DCTXT] \0A\00", align 1
@.str.27 = private unnamed_addr constant [67 x i8] c"                 Indicate multiple modes by adding their values. \0A\00", align 1
@.str.28 = private unnamed_addr constant [66 x i8] c"                 ex: RESTART(4) + RESET(2) + SEGMARK(32) = -M 38\0A\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"-D           : define DC offset (-D 12) \0A\00", align 1
@.str.30 = private unnamed_addr constant [64 x i8] c"-x           : create an index file *.Idx (-x index_name.Idx) \0A\00", align 1
@.str.31 = private unnamed_addr constant [62 x i8] c"-ROI         : c=%%d,U=%%d : quantization indices upshifted \0A\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"               for component c=%%d [%%d = 0,1,2]\0A\00", align 1
@.str.33 = private unnamed_addr constant [77 x i8] c"               with a value of U=%%d [0 <= %%d <= 37] (i.e. -ROI:c=0,U=25) \0A\00", align 1
@.str.34 = private unnamed_addr constant [69 x i8] c"-d           : offset of the origin of the volume (-d 150,300,100) \0A\00", align 1
@.str.35 = private unnamed_addr constant [66 x i8] c"-l           : offset of the origin of the tiles (-l 100,75,25) \0A\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"DEFAULT CODING:\0A\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c" * Lossless\0A\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c" * 1 tile\0A\00", align 1
@.str.39 = private unnamed_addr constant [61 x i8] c" * Size of precinct : 2^15 x 2^15 x 2^15 (means 1 precinct)\0A\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c" * Size of code-block : 64 x 64 x 64\0A\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c" * Number of resolutions in x, y and z axis: 3\0A\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c" * No SOP marker in the codestream\0A\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c" * No EPH marker in the codestream\0A\00", align 1
@.str.44 = private unnamed_addr constant [43 x i8] c" * No sub-sampling in x, y or z direction\0A\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c" * No mode switch activated\0A\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c" * Progression order: LRCP\0A\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c" * No index file\0A\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c" * No ROI upshifted\0A\00", align 1
@.str.49 = private unnamed_addr constant [42 x i8] c" * No offset of the origin of the volume\0A\00", align 1
@.str.50 = private unnamed_addr constant [41 x i8] c" * No offset of the origin of the tiles\0A\00", align 1
@.str.51 = private unnamed_addr constant [40 x i8] c" * Reversible DWT 5-3 on each 2D slice\0A\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c" * Coding algorithm: 2D-EBCOT \0A\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"REMARKS:\0A\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"---------\0A\00", align 1
@.str.55 = private unnamed_addr constant [69 x i8] c"- The markers written to the main_header are : SOC SIZ COD QCD COM.\0A\00", align 1
@.str.56 = private unnamed_addr constant [61 x i8] c"- COD and QCD markers will never appear in the tile_header.\0A\00", align 1
@.str.57 = private unnamed_addr constant [69 x i8] c"- You need enough disk space memory (twice the original) to encode \0A\00", align 1
@.str.58 = private unnamed_addr constant [79 x i8] c"the volume,i.e. for a 1.5 GB volume you need a minimum of 3GB of disk memory)\0A\00", align 1
@.str.59 = private unnamed_addr constant [88 x i8] c"- When loading *.pgx files, a relative path to directory is needed for input argument \0A\00", align 1
@.str.60 = private unnamed_addr constant [102 x i8] c" followed by the common prefix of the slices and a '*' character representing sequential numeration.\0A\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"( -i relativepath/slices*.pgx )\0A\00", align 1
@.str.62 = private unnamed_addr constant [44 x i8] c" - The index file has the structure below:\0A\00", align 1
@.str.63 = private unnamed_addr constant [40 x i8] c"\09\09Image_height Image_width Image_depth\0A\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"\09\09Progression order: 0 (LRCP)\0A\00", align 1
@.str.65 = private unnamed_addr constant [42 x i8] c"\09\09Tiles_size_X Tiles_size_Y Tiles_size_Z\0A\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"\09\09Components_nb\0A\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"\09\09Layers_nb\0A\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"\09\09Decomposition_levels\0A\00", align 1
@.str.69 = private unnamed_addr constant [84 x i8] c"\09\09[Precincts_size_X_res_Nr Precincts_size_Y_res_Nr Precincts_size_Z_res_Nr]\0A\09  ...\0A\00", align 1
@.str.70 = private unnamed_addr constant [74 x i8] c"\09\09[Precincts_size_X_res_0 Precincts_size_Y_res_0 Precincts_size_Z_res_0]\0A\00", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"\09\09Main_header_end_position\0A\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"\09\09Codestream_size\0A\00", align 1
@.str.73 = private unnamed_addr constant [66 x i8] c"\09\09Tile_0 [start_pos end_header end_pos TotalDisto NumPix MaxMSE]\0A\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"\09\09...\0A\00", align 1
@.str.75 = private unnamed_addr constant [66 x i8] c"\09\09Tile_Nt [  ''         ''        ''        ''       ''    ''  ]\0A\00", align 1
@.str.76 = private unnamed_addr constant [68 x i8] c"\09  Tpacket_0 [Tile layer res. comp. prec. start_pos end_pos disto]\0A\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"\09  ...\0A\00", align 1
@.str.78 = private unnamed_addr constant [68 x i8] c"\09  Tpacket_Np [''   ''    ''   ''    ''       ''       ''     '' ]\0A\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"\09  MaxDisto\0A\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"\09  TotalDisto\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encode_help_display() #0 {
  %1 = load i32, i32* @stdout, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @stdout, align 4
  %4 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @stdout, align 4
  %6 = call i32 @fprintf(i32 %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* @stdout, align 4
  %8 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32, i32* @stdout, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %13 = load i32, i32* @stdout, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32, i32* @stdout, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0))
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32, i32* @stdout, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %21 = load i32, i32* @stdout, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @stdout, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %25 = load i32, i32* @stdout, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* @stdout, align 4
  %28 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  %29 = load i32, i32* @stdout, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @stdout, align 4
  %32 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  %33 = load i32, i32* @stdout, align 4
  %34 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @stdout, align 4
  %36 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.10, i64 0, i64 0))
  %37 = load i32, i32* @stdout, align 4
  %38 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @stdout, align 4
  %40 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0))
  %41 = load i32, i32* @stdout, align 4
  %42 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @stdout, align 4
  %44 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.12, i64 0, i64 0))
  %45 = load i32, i32* @stdout, align 4
  %46 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.13, i64 0, i64 0))
  %47 = load i32, i32* @stdout, align 4
  %48 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0))
  %49 = load i32, i32* @stdout, align 4
  %50 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.15, i64 0, i64 0))
  %51 = load i32, i32* @stdout, align 4
  %52 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @stdout, align 4
  %54 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.16, i64 0, i64 0))
  %55 = load i32, i32* @stdout, align 4
  %56 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.15, i64 0, i64 0))
  %57 = load i32, i32* @stdout, align 4
  %58 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @stdout, align 4
  %60 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0))
  %61 = load i32, i32* @stdout, align 4
  %62 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @stdout, align 4
  %64 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.18, i64 0, i64 0))
  %65 = load i32, i32* @stdout, align 4
  %66 = call i32 @fprintf(i32 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @stdout, align 4
  %68 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0))
  %69 = load i32, i32* @stdout, align 4
  %70 = call i32 @fprintf(i32 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* @stdout, align 4
  %72 = call i32 @fprintf(i32 %71, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.20, i64 0, i64 0))
  %73 = load i32, i32* @stdout, align 4
  %74 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @stdout, align 4
  %76 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0))
  %77 = load i32, i32* @stdout, align 4
  %78 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.22, i64 0, i64 0))
  %79 = load i32, i32* @stdout, align 4
  %80 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @stdout, align 4
  %82 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.23, i64 0, i64 0))
  %83 = load i32, i32* @stdout, align 4
  %84 = call i32 @fprintf(i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @stdout, align 4
  %86 = call i32 @fprintf(i32 %85, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.24, i64 0, i64 0))
  %87 = load i32, i32* @stdout, align 4
  %88 = call i32 @fprintf(i32 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* @stdout, align 4
  %90 = call i32 @fprintf(i32 %89, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.25, i64 0, i64 0))
  %91 = load i32, i32* @stdout, align 4
  %92 = call i32 @fprintf(i32 %91, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.26, i64 0, i64 0))
  %93 = load i32, i32* @stdout, align 4
  %94 = call i32 @fprintf(i32 %93, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.27, i64 0, i64 0))
  %95 = load i32, i32* @stdout, align 4
  %96 = call i32 @fprintf(i32 %95, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.28, i64 0, i64 0))
  %97 = load i32, i32* @stdout, align 4
  %98 = call i32 @fprintf(i32 %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i32, i32* @stdout, align 4
  %100 = call i32 @fprintf(i32 %99, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i64 0, i64 0))
  %101 = load i32, i32* @stdout, align 4
  %102 = call i32 @fprintf(i32 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @stdout, align 4
  %104 = call i32 @fprintf(i32 %103, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.30, i64 0, i64 0))
  %105 = load i32, i32* @stdout, align 4
  %106 = call i32 @fprintf(i32 %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* @stdout, align 4
  %108 = call i32 @fprintf(i32 %107, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.31, i64 0, i64 0))
  %109 = load i32, i32* @stdout, align 4
  %110 = call i32 @fprintf(i32 %109, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.32, i64 0, i64 0))
  %111 = load i32, i32* @stdout, align 4
  %112 = call i32 @fprintf(i32 %111, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.33, i64 0, i64 0))
  %113 = load i32, i32* @stdout, align 4
  %114 = call i32 @fprintf(i32 %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i32, i32* @stdout, align 4
  %116 = call i32 @fprintf(i32 %115, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.34, i64 0, i64 0))
  %117 = load i32, i32* @stdout, align 4
  %118 = call i32 @fprintf(i32 %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %119 = load i32, i32* @stdout, align 4
  %120 = call i32 @fprintf(i32 %119, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.35, i64 0, i64 0))
  %121 = load i32, i32* @stdout, align 4
  %122 = call i32 @fprintf(i32 %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32, i32* @stdout, align 4
  %124 = call i32 @fprintf(i32 %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* @stdout, align 4
  %126 = call i32 @fprintf(i32 %125, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0))
  %127 = load i32, i32* @stdout, align 4
  %128 = call i32 @fprintf(i32 %127, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %129 = load i32, i32* @stdout, align 4
  %130 = call i32 @fprintf(i32 %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i32, i32* @stdout, align 4
  %132 = call i32 @fprintf(i32 %131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0))
  %133 = load i32, i32* @stdout, align 4
  %134 = call i32 @fprintf(i32 %133, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0))
  %135 = load i32, i32* @stdout, align 4
  %136 = call i32 @fprintf(i32 %135, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.39, i64 0, i64 0))
  %137 = load i32, i32* @stdout, align 4
  %138 = call i32 @fprintf(i32 %137, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0))
  %139 = load i32, i32* @stdout, align 4
  %140 = call i32 @fprintf(i32 %139, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.41, i64 0, i64 0))
  %141 = load i32, i32* @stdout, align 4
  %142 = call i32 @fprintf(i32 %141, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.42, i64 0, i64 0))
  %143 = load i32, i32* @stdout, align 4
  %144 = call i32 @fprintf(i32 %143, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43, i64 0, i64 0))
  %145 = load i32, i32* @stdout, align 4
  %146 = call i32 @fprintf(i32 %145, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.44, i64 0, i64 0))
  %147 = load i32, i32* @stdout, align 4
  %148 = call i32 @fprintf(i32 %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.45, i64 0, i64 0))
  %149 = load i32, i32* @stdout, align 4
  %150 = call i32 @fprintf(i32 %149, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i64 0, i64 0))
  %151 = load i32, i32* @stdout, align 4
  %152 = call i32 @fprintf(i32 %151, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i64 0, i64 0))
  %153 = load i32, i32* @stdout, align 4
  %154 = call i32 @fprintf(i32 %153, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i64 0, i64 0))
  %155 = load i32, i32* @stdout, align 4
  %156 = call i32 @fprintf(i32 %155, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.49, i64 0, i64 0))
  %157 = load i32, i32* @stdout, align 4
  %158 = call i32 @fprintf(i32 %157, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.50, i64 0, i64 0))
  %159 = load i32, i32* @stdout, align 4
  %160 = call i32 @fprintf(i32 %159, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.51, i64 0, i64 0))
  %161 = load i32, i32* @stdout, align 4
  %162 = call i32 @fprintf(i32 %161, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i64 0, i64 0))
  %163 = load i32, i32* @stdout, align 4
  %164 = call i32 @fprintf(i32 %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %165 = load i32, i32* @stdout, align 4
  %166 = call i32 @fprintf(i32 %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i64 0, i64 0))
  %167 = load i32, i32* @stdout, align 4
  %168 = call i32 @fprintf(i32 %167, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0))
  %169 = load i32, i32* @stdout, align 4
  %170 = call i32 @fprintf(i32 %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %171 = load i32, i32* @stdout, align 4
  %172 = call i32 @fprintf(i32 %171, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.55, i64 0, i64 0))
  %173 = load i32, i32* @stdout, align 4
  %174 = call i32 @fprintf(i32 %173, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.56, i64 0, i64 0))
  %175 = load i32, i32* @stdout, align 4
  %176 = call i32 @fprintf(i32 %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %177 = load i32, i32* @stdout, align 4
  %178 = call i32 @fprintf(i32 %177, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.57, i64 0, i64 0))
  %179 = load i32, i32* @stdout, align 4
  %180 = call i32 @fprintf(i32 %179, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.58, i64 0, i64 0))
  %181 = load i32, i32* @stdout, align 4
  %182 = call i32 @fprintf(i32 %181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %183 = load i32, i32* @stdout, align 4
  %184 = call i32 @fprintf(i32 %183, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.59, i64 0, i64 0))
  %185 = load i32, i32* @stdout, align 4
  %186 = call i32 @fprintf(i32 %185, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.60, i64 0, i64 0))
  %187 = load i32, i32* @stdout, align 4
  %188 = call i32 @fprintf(i32 %187, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.61, i64 0, i64 0))
  %189 = load i32, i32* @stdout, align 4
  %190 = call i32 @fprintf(i32 %189, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %191 = load i32, i32* @stdout, align 4
  %192 = call i32 @fprintf(i32 %191, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.62, i64 0, i64 0))
  %193 = load i32, i32* @stdout, align 4
  %194 = call i32 @fprintf(i32 %193, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %195 = load i32, i32* @stdout, align 4
  %196 = call i32 @fprintf(i32 %195, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.63, i64 0, i64 0))
  %197 = load i32, i32* @stdout, align 4
  %198 = call i32 @fprintf(i32 %197, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.64, i64 0, i64 0))
  %199 = load i32, i32* @stdout, align 4
  %200 = call i32 @fprintf(i32 %199, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.65, i64 0, i64 0))
  %201 = load i32, i32* @stdout, align 4
  %202 = call i32 @fprintf(i32 %201, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i64 0, i64 0))
  %203 = load i32, i32* @stdout, align 4
  %204 = call i32 @fprintf(i32 %203, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i64 0, i64 0))
  %205 = load i32, i32* @stdout, align 4
  %206 = call i32 @fprintf(i32 %205, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i64 0, i64 0))
  %207 = load i32, i32* @stdout, align 4
  %208 = call i32 @fprintf(i32 %207, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.69, i64 0, i64 0))
  %209 = load i32, i32* @stdout, align 4
  %210 = call i32 @fprintf(i32 %209, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.70, i64 0, i64 0))
  %211 = load i32, i32* @stdout, align 4
  %212 = call i32 @fprintf(i32 %211, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.71, i64 0, i64 0))
  %213 = load i32, i32* @stdout, align 4
  %214 = call i32 @fprintf(i32 %213, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i64 0, i64 0))
  %215 = load i32, i32* @stdout, align 4
  %216 = call i32 @fprintf(i32 %215, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.73, i64 0, i64 0))
  %217 = load i32, i32* @stdout, align 4
  %218 = call i32 @fprintf(i32 %217, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0))
  %219 = load i32, i32* @stdout, align 4
  %220 = call i32 @fprintf(i32 %219, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.75, i64 0, i64 0))
  %221 = load i32, i32* @stdout, align 4
  %222 = call i32 @fprintf(i32 %221, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.76, i64 0, i64 0))
  %223 = load i32, i32* @stdout, align 4
  %224 = call i32 @fprintf(i32 %223, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i64 0, i64 0))
  %225 = load i32, i32* @stdout, align 4
  %226 = call i32 @fprintf(i32 %225, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.78, i64 0, i64 0))
  %227 = load i32, i32* @stdout, align 4
  %228 = call i32 @fprintf(i32 %227, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i64 0, i64 0))
  %229 = load i32, i32* @stdout, align 4
  %230 = call i32 @fprintf(i32 %229, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.80, i64 0, i64 0))
  %231 = load i32, i32* @stdout, align 4
  %232 = call i32 @fprintf(i32 %231, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
