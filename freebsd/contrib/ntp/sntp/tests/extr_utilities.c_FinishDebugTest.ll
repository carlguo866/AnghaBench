; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_utilities.c_FinishDebugTest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_utilities.c_FinishDebugTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outputFileOpened = common dso_local global i64 0, align 8
@outputFile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FinishDebugTest(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i64, i64* @outputFileOpened, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @outputFile, align 4
  %11 = call i32 @fclose(i32 %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i8*, i8** %3, align 8
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @TEST_ASSERT_NOT_NULL(i32* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @TEST_ASSERT_NOT_NULL(i32* %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @CompareFileContent(i32* %21, i32* %22)
  ret void
}

declare dso_local i32 @fclose(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(i32*) #1

declare dso_local i32 @CompareFileContent(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
