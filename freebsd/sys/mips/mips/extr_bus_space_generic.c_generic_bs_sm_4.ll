; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_bus_space_generic.c_generic_bs_sm_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_bus_space_generic.c_generic_bs_sm_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generic_bs_sm_4(i8* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* %11, align 8
  br label %15

15:                                               ; preds = %19, %5
  %16 = load i64, i64* %10, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %10, align 8
  %18 = icmp ne i64 %16, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i64, i64* %11, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @wr32(i64 %20, i32 %21)
  br label %15

23:                                               ; preds = %15
  ret void
}

declare dso_local i32 @wr32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
