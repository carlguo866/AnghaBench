; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_nic.h_ef4_nic_fini_eventq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_nic.h_ef4_nic_fini_eventq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_channel = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ef4_channel*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_channel*)* @ef4_nic_fini_eventq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_nic_fini_eventq(%struct.ef4_channel* %0) #0 {
  %2 = alloca %struct.ef4_channel*, align 8
  store %struct.ef4_channel* %0, %struct.ef4_channel** %2, align 8
  %3 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %4 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32 (%struct.ef4_channel*)*, i32 (%struct.ef4_channel*)** %8, align 8
  %10 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %11 = call i32 %9(%struct.ef4_channel* %10)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
