; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_event.c_wlcore_event_dummy_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_event.c_wlcore_event_dummy_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }

@DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"DUMMY_PACKET_ID_EVENT_ID\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlcore_event_dummy_packet(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %3 = load i32, i32* @DEBUG_EVENT, align 4
  %4 = call i32 @wl1271_debug(i32 %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %6 = call i32 @wl1271_tx_dummy_packet(%struct.wl1271* %5)
  ret void
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @wl1271_tx_dummy_packet(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
