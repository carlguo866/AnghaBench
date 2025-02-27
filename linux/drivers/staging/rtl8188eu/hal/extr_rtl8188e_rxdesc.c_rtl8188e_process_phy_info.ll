; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_rxdesc.c_rtl8188e_process_phy_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_rxdesc.c_rtl8188e_process_phy_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.recv_frame = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8188e_process_phy_info(%struct.adapter* %0, %struct.recv_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.recv_frame*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.recv_frame* %1, %struct.recv_frame** %4, align 8
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %7 = call i32 @process_rssi(%struct.adapter* %5, %struct.recv_frame* %6)
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %10 = call i32 @process_link_qual(%struct.adapter* %8, %struct.recv_frame* %9)
  ret void
}

declare dso_local i32 @process_rssi(%struct.adapter*, %struct.recv_frame*) #1

declare dso_local i32 @process_link_qual(%struct.adapter*, %struct.recv_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
