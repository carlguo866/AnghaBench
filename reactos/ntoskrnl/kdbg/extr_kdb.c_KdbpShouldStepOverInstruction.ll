; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/extr_kdb.c_KdbpShouldStepOverInstruction.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/extr_kdb.c_KdbpShouldStepOverInstruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"Couldn't access memory at 0x%p\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @KdbpShouldStepOverInstruction(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %7 = load i64, i64* %3, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i32 @KdbpSafeReadMemory(i32* %6, i32 %8, i32 12)
  %10 = call i32 @NT_SUCCESS(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @KdbpPrint(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %2, align 4
  br label %93

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %37, %16
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 12
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 102
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 103
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i1 [ true, %21 ], [ %32, %27 ]
  br label %35

35:                                               ; preds = %33, %17
  %36 = phi i1 [ false, %17 ], [ %34, %33 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %17

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp eq i64 %42, 12
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %2, align 4
  br label %93

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 232
  br i1 %51, label %89, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 154
  br i1 %57, label %89, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 242
  br i1 %63, label %89, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 243
  br i1 %69, label %89, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = icmp ult i64 %73, 12
  br i1 %74, label %75, label %91

75:                                               ; preds = %70
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 255
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 56
  %88 = icmp eq i32 %87, 16
  br i1 %88, label %89, label %91

89:                                               ; preds = %81, %64, %58, %52, %46
  %90 = load i32, i32* @TRUE, align 4
  store i32 %90, i32* %2, align 4
  br label %93

91:                                               ; preds = %81, %75, %70
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %89, %44, %12
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @KdbpSafeReadMemory(i32*, i32, i32) #1

declare dso_local i32 @KdbpPrint(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
