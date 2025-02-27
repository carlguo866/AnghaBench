; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_stop.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64, %struct.hidp_session* }
%struct.hidp_session = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @hidp_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidp_stop(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.hidp_session*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %4 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %5 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %4, i32 0, i32 1
  %6 = load %struct.hidp_session*, %struct.hidp_session** %5, align 8
  store %struct.hidp_session* %6, %struct.hidp_session** %3, align 8
  %7 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %8 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %7, i32 0, i32 1
  %9 = call i32 @skb_queue_purge(i32* %8)
  %10 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %11 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %10, i32 0, i32 0
  %12 = call i32 @skb_queue_purge(i32* %11)
  %13 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %14 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  ret void
}

declare dso_local i32 @skb_queue_purge(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
