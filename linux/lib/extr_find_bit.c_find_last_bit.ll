; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_find_bit.c_find_last_bit.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_find_bit.c_find_last_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @find_last_bit(i64* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @BITMAP_LAST_WORD_MASK(i64 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = sub i64 %13, 1
  %15 = load i64, i64* @BITS_PER_LONG, align 8
  %16 = udiv i64 %14, %15
  store i64 %16, i64* %7, align 8
  br label %17

17:                                               ; preds = %34, %10
  %18 = load i64*, i64** %4, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = and i64 %22, %21
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @BITS_PER_LONG, align 8
  %29 = mul i64 %27, %28
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @__fls(i64 %30)
  %32 = add i64 %29, %31
  store i64 %32, i64* %3, align 8
  br label %41

33:                                               ; preds = %17
  store i64 -1, i64* %6, align 8
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %7, align 8
  %37 = icmp ne i64 %35, 0
  br i1 %37, label %17, label %38

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %39, %26
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

declare dso_local i64 @BITMAP_LAST_WORD_MASK(i64) #1

declare dso_local i64 @__fls(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
