; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_i2sc.c_msbits_to_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_i2sc.c_msbits_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CFG_SZ_8 = common dso_local global i64 0, align 8
@CFG_SZ_16 = common dso_local global i64 0, align 8
@CFG_SZ_18 = common dso_local global i64 0, align 8
@CFG_SZ_20 = common dso_local global i64 0, align 8
@CFG_SZ_24 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @msbits_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msbits_to_reg(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %15 [
    i32 8, label %5
    i32 16, label %7
    i32 18, label %9
    i32 20, label %11
    i32 24, label %13
  ]

5:                                                ; preds = %1
  %6 = load i64, i64* @CFG_SZ_8, align 8
  store i64 %6, i64* %2, align 8
  br label %16

7:                                                ; preds = %1
  %8 = load i64, i64* @CFG_SZ_16, align 8
  store i64 %8, i64* %2, align 8
  br label %16

9:                                                ; preds = %1
  %10 = load i64, i64* @CFG_SZ_18, align 8
  store i64 %10, i64* %2, align 8
  br label %16

11:                                               ; preds = %1
  %12 = load i64, i64* @CFG_SZ_20, align 8
  store i64 %12, i64* %2, align 8
  br label %16

13:                                               ; preds = %1
  %14 = load i64, i64* @CFG_SZ_24, align 8
  store i64 %14, i64* %2, align 8
  br label %16

15:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %16

16:                                               ; preds = %15, %13, %11, %9, %7, %5
  %17 = load i64, i64* %2, align 8
  ret i64 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
