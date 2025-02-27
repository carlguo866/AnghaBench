; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_clear_mac_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_clear_mac_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@MAC_EVENT = common dso_local global i32 0, align 4
@MAC_STATUS = common dso_local global i32 0, align 4
@MAC_STATUS_SYNC_CHANGED = common dso_local global i32 0, align 4
@MAC_STATUS_CFG_CHANGED = common dso_local global i32 0, align 4
@MAC_STATUS_MI_COMPLETION = common dso_local global i32 0, align 4
@MAC_STATUS_LNKSTATE_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_clear_mac_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_clear_mac_status(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %3 = load i32, i32* @MAC_EVENT, align 4
  %4 = call i32 @tw32(i32 %3, i32 0)
  %5 = load i32, i32* @MAC_STATUS, align 4
  %6 = load i32, i32* @MAC_STATUS_SYNC_CHANGED, align 4
  %7 = load i32, i32* @MAC_STATUS_CFG_CHANGED, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @MAC_STATUS_MI_COMPLETION, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MAC_STATUS_LNKSTATE_CHANGED, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @tw32_f(i32 %5, i32 %12)
  %14 = call i32 @udelay(i32 40)
  ret void
}

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i32 @tw32_f(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
