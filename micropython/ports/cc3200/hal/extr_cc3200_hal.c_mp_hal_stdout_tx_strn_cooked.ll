; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_cc3200_hal.c_mp_hal_stdout_tx_strn_cooked.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_cc3200_hal.c_mp_hal_stdout_tx_strn_cooked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_hal_stdout_tx_strn_cooked(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %36, %2
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* %4, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %32

22:                                               ; preds = %14
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mp_hal_stdout_tx_strn(i8* %23, i32 %24)
  %26 = call i32 @mp_hal_stdout_tx_strn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i8*, i8** %6, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %6, align 8
  store i32 0, i32* %5, align 4
  br label %35

32:                                               ; preds = %14
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %22
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %9

39:                                               ; preds = %9
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = icmp ult i8* %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @mp_hal_stdout_tx_strn(i8* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %39
  ret void
}

declare dso_local i32 @mp_hal_stdout_tx_strn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
