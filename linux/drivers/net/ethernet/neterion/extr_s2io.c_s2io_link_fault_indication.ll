; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_link_fault_indication.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_link_fault_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { i64 }

@XFRAME_II_DEVICE = common dso_local global i64 0, align 8
@LINK_UP_DOWN_INTERRUPT = common dso_local global i32 0, align 4
@MAC_RMAC_ERR_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s2io_nic*)* @s2io_link_fault_indication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2io_link_fault_indication(%struct.s2io_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s2io_nic*, align 8
  store %struct.s2io_nic* %0, %struct.s2io_nic** %3, align 8
  %4 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %5 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @XFRAME_II_DEVICE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @LINK_UP_DOWN_INTERRUPT, align 4
  store i32 %10, i32* %2, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @MAC_RMAC_ERR_TIMER, align 4
  store i32 %12, i32* %2, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
