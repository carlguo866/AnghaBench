; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_cp210x.c_cp210x_get_actual_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_cp210x.c_cp210x_get_actual_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cp210x_get_actual_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp210x_get_actual_rate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 %5, 365
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 4, i32* %3, align 4
  br label %8

8:                                                ; preds = %7, %1
  %9 = load i32, i32* %3, align 4
  %10 = mul i32 2, %9
  %11 = load i32, i32* %2, align 4
  %12 = mul i32 %10, %11
  %13 = call i32 @DIV_ROUND_CLOSEST(i32 48000000, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = mul i32 2, %14
  %16 = load i32, i32* %4, align 4
  %17 = mul i32 %15, %16
  %18 = udiv i32 48000000, %17
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
