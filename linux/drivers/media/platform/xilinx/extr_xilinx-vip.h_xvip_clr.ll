; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vip.h_xvip_clr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vip.h_xvip_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvip_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xvip_device*, i32, i32)* @xvip_clr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xvip_clr(%struct.xvip_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xvip_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xvip_device* %0, %struct.xvip_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.xvip_device*, %struct.xvip_device** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.xvip_device*, %struct.xvip_device** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @xvip_read(%struct.xvip_device* %9, i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = call i32 @xvip_write(%struct.xvip_device* %7, i32 %8, i32 %14)
  ret void
}

declare dso_local i32 @xvip_write(%struct.xvip_device*, i32, i32) #1

declare dso_local i32 @xvip_read(%struct.xvip_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
