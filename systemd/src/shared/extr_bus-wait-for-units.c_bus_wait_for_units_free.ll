; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bus-wait-for-units.c_bus_wait_for_units_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bus-wait-for-units.c_bus_wait_for_units_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @bus_wait_for_units_free(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = icmp ne %struct.TYPE_7__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %20

7:                                                ; preds = %1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = call i32 @bus_wait_for_units_clear(%struct.TYPE_7__* %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sd_bus_slot_unref(i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sd_bus_unref(i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = call %struct.TYPE_7__* @mfree(%struct.TYPE_7__* %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %2, align 8
  br label %20

20:                                               ; preds = %7, %6
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %21
}

declare dso_local i32 @bus_wait_for_units_clear(%struct.TYPE_7__*) #1

declare dso_local i32 @sd_bus_slot_unref(i32) #1

declare dso_local i32 @sd_bus_unref(i32) #1

declare dso_local %struct.TYPE_7__* @mfree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
