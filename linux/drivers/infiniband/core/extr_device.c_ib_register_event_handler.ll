; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_ib_register_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_ib_register_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_event_handler = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_register_event_handler(%struct.ib_event_handler* %0) #0 {
  %2 = alloca %struct.ib_event_handler*, align 8
  %3 = alloca i64, align 8
  store %struct.ib_event_handler* %0, %struct.ib_event_handler** %2, align 8
  %4 = load %struct.ib_event_handler*, %struct.ib_event_handler** %2, align 8
  %5 = getelementptr inbounds %struct.ib_event_handler, %struct.ib_event_handler* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.ib_event_handler*, %struct.ib_event_handler** %2, align 8
  %11 = getelementptr inbounds %struct.ib_event_handler, %struct.ib_event_handler* %10, i32 0, i32 1
  %12 = load %struct.ib_event_handler*, %struct.ib_event_handler** %2, align 8
  %13 = getelementptr inbounds %struct.ib_event_handler, %struct.ib_event_handler* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i32 @list_add_tail(i32* %11, i32* %15)
  %17 = load %struct.ib_event_handler*, %struct.ib_event_handler** %2, align 8
  %18 = getelementptr inbounds %struct.ib_event_handler, %struct.ib_event_handler* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
