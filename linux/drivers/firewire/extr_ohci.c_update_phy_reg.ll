; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_update_phy_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_update_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_ohci = type { i32 }

@PHY_INT_STATUS_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_ohci*, i32, i32, i32)* @update_phy_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_phy_reg(%struct.fw_ohci* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_ohci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fw_ohci* %0, %struct.fw_ohci** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @read_phy_reg(%struct.fw_ohci* %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %5, align 4
  br label %35

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 5
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @PHY_INT_STATUS_BITS, align 4
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @write_phy_reg(%struct.fw_ohci* %26, i32 %27, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %25, %16
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @read_phy_reg(%struct.fw_ohci*, i32) #1

declare dso_local i32 @write_phy_reg(%struct.fw_ohci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
