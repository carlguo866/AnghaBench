; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_mcsidx_to_tgtpwridx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_mcsidx_to_tgtpwridx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mcsidx_to_tgtpwridx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcsidx_to_tgtpwridx(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = urem i32 %7, 8
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %9, 3
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  br label %19

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ %16, %14 ], [ %18, %17 ]
  store i32 %20, i32* %3, align 4
  br label %30

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = udiv i32 %23, 8
  %25 = mul i32 4, %24
  %26 = add i32 %22, %25
  %27 = load i32, i32* %6, align 4
  %28 = add i32 %26, %27
  %29 = sub i32 %28, 2
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %21, %19
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
