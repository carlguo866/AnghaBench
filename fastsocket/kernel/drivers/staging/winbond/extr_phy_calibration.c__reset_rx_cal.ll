; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_phy_calibration.c__reset_rx_cal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_phy_calibration.c__reset_rx_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_reset_rx_cal(%struct.hw_data* %0) #0 {
  %2 = alloca %struct.hw_data*, align 8
  %3 = alloca i32, align 4
  store %struct.hw_data* %0, %struct.hw_data** %2, align 8
  %4 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %5 = call i32 @hw_get_dxx_reg(%struct.hw_data* %4, i32 84, i32* %3)
  %6 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %7 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 8194
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, -65536
  store i32 %12, i32* %3, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 1023
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @hw_set_dxx_reg(%struct.hw_data* %17, i32 84, i32 %18)
  ret void
}

declare dso_local i32 @hw_get_dxx_reg(%struct.hw_data*, i32, i32*) #1

declare dso_local i32 @hw_set_dxx_reg(%struct.hw_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
