; ModuleID = '/home/carl/AnghaBench/lwan/src/bin/lwan/extr_main.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/lwan/src/bin/lwan/extr_main.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i8 }
%struct.lwan_config = type { i8*, i8* }
%struct.lwan_straitjacket = type { i8*, i8* }

@parse_args.opts = internal constant [9 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 1, i8 114 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 1, i8 108 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 0, i8 104 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 1, i8 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i8 67 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 1, i8 117 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8 109 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 0, i8 72 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"chroot\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"handlers\00", align 1
@ARGS_USE_CONFIG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"Hmhr:l:c:u:C\00", align 1
@ARGS_FAILED = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@ARGS_SERVE_FILES = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"Root path length exeeds %d characters\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Run %s --help for usage information.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.lwan_config*, i8*, %struct.lwan_straitjacket*)* @parse_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_args(i32 %0, i8** %1, %struct.lwan_config* %2, i8* %3, %struct.lwan_straitjacket* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.lwan_config*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.lwan_straitjacket*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store %struct.lwan_config* %2, %struct.lwan_config** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.lwan_straitjacket* %4, %struct.lwan_straitjacket** %11, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* @ARGS_USE_CONFIG, align 4
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %94, %5
  %18 = load i32, i32* %7, align 4
  %19 = load i8**, i8*** %8, align 8
  %20 = call i32 @getopt_long(i32 %18, i8** %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), %struct.option* getelementptr inbounds ([9 x %struct.option], [9 x %struct.option]* @parse_args.opts, i64 0, i64 0), i32* %13)
  store i32 %20, i32* %12, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %95

22:                                               ; preds = %17
  %23 = load i32, i32* %12, align 4
  switch i32 %23, label %88 [
    i32 72, label %24
    i32 109, label %27
    i32 117, label %30
    i32 67, label %39
    i32 99, label %43
    i32 108, label %53
    i32 114, label %63
    i32 104, label %81
  ]

24:                                               ; preds = %22
  %25 = call i32 (...) @print_handler_info()
  %26 = load i32, i32* @ARGS_FAILED, align 4
  store i32 %26, i32* %6, align 4
  br label %97

27:                                               ; preds = %22
  %28 = call i32 (...) @print_module_info()
  %29 = load i32, i32* @ARGS_FAILED, align 4
  store i32 %29, i32* %6, align 4
  br label %97

30:                                               ; preds = %22
  %31 = load %struct.lwan_straitjacket*, %struct.lwan_straitjacket** %11, align 8
  %32 = getelementptr inbounds %struct.lwan_straitjacket, %struct.lwan_straitjacket* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @free(i8* %33)
  %35 = load i32, i32* @optarg, align 4
  %36 = call i8* @strdup(i32 %35)
  %37 = load %struct.lwan_straitjacket*, %struct.lwan_straitjacket** %11, align 8
  %38 = getelementptr inbounds %struct.lwan_straitjacket, %struct.lwan_straitjacket* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %94

39:                                               ; preds = %22
  %40 = load i8*, i8** %10, align 8
  %41 = load %struct.lwan_straitjacket*, %struct.lwan_straitjacket** %11, align 8
  %42 = getelementptr inbounds %struct.lwan_straitjacket, %struct.lwan_straitjacket* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  br label %94

43:                                               ; preds = %22
  %44 = load %struct.lwan_config*, %struct.lwan_config** %9, align 8
  %45 = getelementptr inbounds %struct.lwan_config, %struct.lwan_config* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i32, i32* @optarg, align 4
  %49 = call i8* @strdup(i32 %48)
  %50 = load %struct.lwan_config*, %struct.lwan_config** %9, align 8
  %51 = getelementptr inbounds %struct.lwan_config, %struct.lwan_config* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @ARGS_USE_CONFIG, align 4
  store i32 %52, i32* %14, align 4
  br label %94

53:                                               ; preds = %22
  %54 = load %struct.lwan_config*, %struct.lwan_config** %9, align 8
  %55 = getelementptr inbounds %struct.lwan_config, %struct.lwan_config* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i32, i32* @optarg, align 4
  %59 = call i8* @strdup(i32 %58)
  %60 = load %struct.lwan_config*, %struct.lwan_config** %9, align 8
  %61 = getelementptr inbounds %struct.lwan_config, %struct.lwan_config* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* @ARGS_SERVE_FILES, align 4
  store i32 %62, i32* %14, align 4
  br label %94

63:                                               ; preds = %22
  %64 = load i32, i32* @optarg, align 4
  %65 = call i64 @strlen(i32 %64)
  store i64 %65, i64* %15, align 8
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* @PATH_MAX, align 8
  %68 = icmp uge i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i32, i32* @stderr, align 4
  %71 = load i64, i64* @PATH_MAX, align 8
  %72 = call i32 @fprintf(i32 %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i64 %71)
  %73 = load i32, i32* @ARGS_FAILED, align 4
  store i32 %73, i32* %6, align 4
  br label %97

74:                                               ; preds = %63
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* @optarg, align 4
  %77 = load i64, i64* %15, align 8
  %78 = add i64 %77, 1
  %79 = call i32 @memcpy(i8* %75, i32 %76, i64 %78)
  %80 = load i32, i32* @ARGS_SERVE_FILES, align 4
  store i32 %80, i32* %14, align 4
  br label %94

81:                                               ; preds = %22
  %82 = load i8**, i8*** %8, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.lwan_config*, %struct.lwan_config** %9, align 8
  %86 = call i32 @print_help(i8* %84, %struct.lwan_config* %85)
  %87 = load i32, i32* @ARGS_FAILED, align 4
  store i32 %87, i32* %6, align 4
  br label %97

88:                                               ; preds = %22
  %89 = load i8**, i8*** %8, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* %91)
  %93 = load i32, i32* @ARGS_FAILED, align 4
  store i32 %93, i32* %6, align 4
  br label %97

94:                                               ; preds = %74, %53, %43, %39, %30
  br label %17

95:                                               ; preds = %17
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %95, %88, %81, %69, %27, %24
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @print_handler_info(...) #1

declare dso_local i32 @print_module_info(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @print_help(i8*, %struct.lwan_config*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
