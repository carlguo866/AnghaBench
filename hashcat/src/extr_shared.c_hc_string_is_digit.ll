; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_shared.c_hc_string_is_digit.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_shared.c_hc_string_is_digit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hc_string_is_digit(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %36

16:                                               ; preds = %10
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @isdigit(i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %36

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %17

35:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %30, %15, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @isdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
