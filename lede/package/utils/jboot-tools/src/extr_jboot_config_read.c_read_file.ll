; ModuleID = '/home/carl/AnghaBench/lede/package/utils/jboot-tools/src/extr_jboot_config_read.c_read_file.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/jboot-tools/src/extr_jboot_config_read.c_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to open config input file %s\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@buffer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Allocated %d bytes.\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to read config input file %s\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Read %d bytes of config input file %s\00", align 1
@config_size = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @read_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %6, i32* %3, align 4
  store i64 0, i64* %4, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %47

14:                                               ; preds = %1
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @SEEK_END, align 4
  %17 = call i32 @fseek(i32* %15, i64 0, i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @ftell(i32* %18)
  store i64 %19, i64* %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @SEEK_SET, align 4
  %22 = call i32 @fseek(i32* %20, i64 0, i32 %21)
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @malloc(i64 %23)
  store i32 %24, i32* @buffer, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32 (i8*, i64, ...) @VERBOSE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @buffer, align 4
  %28 = load i64, i64* %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @fread(i32 %27, i32 1, i64 %28, i32* %29)
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %14
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  br label %42

36:                                               ; preds = %14
  %37 = load i64, i64* %4, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 (i8*, i64, ...) @VERBOSE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %37, i8* %38)
  %40 = load i64, i64* %4, align 8
  store i64 %40, i64* @config_size, align 8
  %41 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %41, i32* %3, align 4
  br label %47

42:                                               ; preds = %33
  %43 = load i32, i32* @buffer, align 4
  %44 = call i32 @free(i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @fclose(i32* %45)
  br label %47

47:                                               ; preds = %42, %36, %11
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @ERR(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @malloc(i64) #1

declare dso_local i32 @VERBOSE(i8*, i64, ...) #1

declare dso_local i64 @fread(i32, i32, i64, i32*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
