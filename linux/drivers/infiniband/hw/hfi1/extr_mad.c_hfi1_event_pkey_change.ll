; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_event_pkey_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_event_pkey_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ib_event = type { %struct.TYPE_6__, i32*, i32 }
%struct.TYPE_6__ = type { i32 }

@IB_EVENT_PKEY_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_event_pkey_change(%struct.hfi1_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_event, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @IB_EVENT_PKEY_CHANGE, align 4
  %7 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 2
  store i32 %6, i32* %7, align 8
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %9 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 1
  store i32* %11, i32** %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = call i32 @ib_dispatch_event(%struct.ib_event* %5)
  ret void
}

declare dso_local i32 @ib_dispatch_event(%struct.ib_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
