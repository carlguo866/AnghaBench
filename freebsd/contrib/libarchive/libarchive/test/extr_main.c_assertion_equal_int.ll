; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_assertion_equal_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_assertion_equal_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%s != %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"      %s=%lld (0x%llx, 0%llo)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assertion_equal_int(i8* %0, i32 %1, i64 %2, i8* %3, i64 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @assertion_count(i8* %16, i32 %17)
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* %13, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %41

23:                                               ; preds = %7
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i8*, i8** %12, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = call i32 @failure_start(i8* %24, i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %27)
  %29 = load i8*, i8** %12, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @logprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %29, i64 %30, i64 %31, i64 %32)
  %34 = load i8*, i8** %14, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %13, align 8
  %38 = call i32 @logprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %34, i64 %35, i64 %36, i64 %37)
  %39 = load i8*, i8** %15, align 8
  %40 = call i32 @failure_finish(i8* %39)
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %23, %22
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local i32 @assertion_count(i8*, i32) #1

declare dso_local i32 @failure_start(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @logprintf(i8*, i8*, i64, i64, i64) #1

declare dso_local i32 @failure_finish(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
