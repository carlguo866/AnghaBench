; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_log.c_skynet_log_output.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_log.c_skynet_log_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTYPE_SOCKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c":%08x %d %d %u \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skynet_log_output(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @PTYPE_SOCKET, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %6
  %18 = load i32*, i32** %7, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i64, i64* %12, align 8
  %21 = call i32 @log_socket(i32* %18, i8* %19, i64 %20)
  br label %38

22:                                               ; preds = %6
  %23 = call i32 (...) @skynet_now()
  store i32 %23, i32* %13, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @log_blob(i32* %30, i8* %31, i64 %32)
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @fflush(i32* %36)
  br label %38

38:                                               ; preds = %22, %17
  ret void
}

declare dso_local i32 @log_socket(i32*, i8*, i64) #1

declare dso_local i32 @skynet_now(...) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @log_blob(i32*, i8*, i64) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
