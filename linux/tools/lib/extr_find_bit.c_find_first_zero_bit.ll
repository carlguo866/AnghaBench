; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/extr_find_bit.c_find_first_zero_bit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/extr_find_bit.c_find_first_zero_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @find_first_zero_bit(i64* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %32, %2
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @BITS_PER_LONG, align 8
  %10 = mul i64 %8, %9
  %11 = load i64, i64* %5, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = load i64*, i64** %4, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, -1
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @BITS_PER_LONG, align 8
  %22 = mul i64 %20, %21
  %23 = load i64*, i64** %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @ffz(i64 %26)
  %28 = add i64 %22, %27
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @min(i64 %28, i64 %29)
  store i64 %30, i64* %3, align 8
  br label %37

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %7

35:                                               ; preds = %7
  %36 = load i64, i64* %5, align 8
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %35, %19
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @ffz(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
