; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_drain_resp_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_drain_resp_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uiscmdrsp = type { i32 }
%struct.visornic_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IOCHAN_FROM_IOPART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uiscmdrsp*, %struct.visornic_devdata*)* @drain_resp_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drain_resp_queue(%struct.uiscmdrsp* %0, %struct.visornic_devdata* %1) #0 {
  %3 = alloca %struct.uiscmdrsp*, align 8
  %4 = alloca %struct.visornic_devdata*, align 8
  store %struct.uiscmdrsp* %0, %struct.uiscmdrsp** %3, align 8
  store %struct.visornic_devdata* %1, %struct.visornic_devdata** %4, align 8
  br label %5

5:                                                ; preds = %16, %2
  %6 = load %struct.visornic_devdata*, %struct.visornic_devdata** %4, align 8
  %7 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IOCHAN_FROM_IOPART, align 4
  %12 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %13 = call i32 @visorchannel_signalremove(i32 %10, i32 %11, %struct.uiscmdrsp* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %5

17:                                               ; preds = %5
  ret void
}

declare dso_local i32 @visorchannel_signalremove(i32, i32, %struct.uiscmdrsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
