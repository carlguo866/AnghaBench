; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_bitmap.c_bitmap_onto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_bitmap.c_bitmap_onto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_onto(i64* %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64*, i64** %5, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = icmp eq i64* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %44

15:                                               ; preds = %4
  %16 = load i64*, i64** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @bitmap_zero(i64* %16, i32 %17)
  store i32 0, i32* %10, align 4
  %19 = load i64*, i64** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @find_first_bit(i64* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %38, %15
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  %28 = load i64*, i64** %6, align 8
  %29 = call i64 @test_bit(i32 %27, i64* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = load i64*, i64** %5, align 8
  %34 = call i32 @set_bit(i32 %32, i64* %33)
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %35
  %39 = load i64*, i64** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @find_next_bit(i64* %39, i32 %40, i32 %42)
  store i32 %43, i32* %9, align 4
  br label %22

44:                                               ; preds = %14, %22
  ret void
}

declare dso_local i32 @bitmap_zero(i64*, i32) #1

declare dso_local i32 @find_first_bit(i64*, i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
