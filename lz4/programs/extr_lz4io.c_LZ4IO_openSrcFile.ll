; ModuleID = '/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_LZ4IO_openSrcFile.c'
source_filename = "/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_LZ4IO_openSrcFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdinmark = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Using stdin for input\0A\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s: %s \0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @LZ4IO_openSrcFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @LZ4IO_openSrcFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i32, i32* @stdinmark, align 4
  %6 = call i32 @strcmp(i8* %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** @stdin, align 8
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** @stdin, align 8
  %12 = call i32 @SET_BINARY_MODE(i32* %11)
  br label %24

13:                                               ; preds = %1
  %14 = load i8*, i8** %2, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i8*, i8** %2, align 8
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @strerror(i32 %20)
  %22 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %19, i32 %21)
  br label %23

23:                                               ; preds = %18, %13
  br label %24

24:                                               ; preds = %23, %8
  %25 = load i32*, i32** %3, align 8
  ret i32* %25
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i32 @SET_BINARY_MODE(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
