; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168c_4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168c_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_start_8168c_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_start_8168c_4(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private* %3)
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = call i32 @__rtl_hw_start_8168cp(%struct.rtl8169_private* %5)
  ret void
}

declare dso_local i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private*) #1

declare dso_local i32 @__rtl_hw_start_8168cp(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
