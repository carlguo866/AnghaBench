; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_eeti_ts.c_eeti_ts_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_eeti_ts.c_eeti_ts_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeti_ts = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeti_ts*)* @eeti_ts_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeti_ts_stop(%struct.eeti_ts* %0) #0 {
  %2 = alloca %struct.eeti_ts*, align 8
  store %struct.eeti_ts* %0, %struct.eeti_ts** %2, align 8
  %3 = load %struct.eeti_ts*, %struct.eeti_ts** %2, align 8
  %4 = getelementptr inbounds %struct.eeti_ts, %struct.eeti_ts* %3, i32 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = call i32 (...) @wmb()
  %6 = load %struct.eeti_ts*, %struct.eeti_ts** %2, align 8
  %7 = getelementptr inbounds %struct.eeti_ts, %struct.eeti_ts* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @disable_irq(i32 %10)
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
