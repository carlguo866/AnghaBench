; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_compute_split_timeout_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_compute_split_timeout_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_card*, i32)* @compute_split_timeout_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_split_timeout_timestamp(%struct.fw_card* %0, i32 %1) #0 {
  %3 = alloca %struct.fw_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %8 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 8191
  %12 = load i32, i32* %5, align 4
  %13 = add i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, -8192
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = udiv i32 %16, 8000
  %18 = shl i32 %17, 13
  %19 = load i32, i32* %6, align 4
  %20 = add i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = urem i32 %21, 8000
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
