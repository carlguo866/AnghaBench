; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-slot.c_bus_slot_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-slot.c_bus_slot_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_8__*)* @bus_slot_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @bus_slot_free(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %4 = call i32 @assert(%struct.TYPE_8__* %3)
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = call i32 @bus_slot_disconnect(%struct.TYPE_8__* %5, i32 0)
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %9 = load i32 (i32)*, i32 (i32)** %8, align 8
  %10 = icmp ne i32 (i32)* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load i32 (i32)*, i32 (i32)** %13, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 %14(i32 %17)
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @free(i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = call %struct.TYPE_8__* @mfree(%struct.TYPE_8__* %24)
  ret %struct.TYPE_8__* %25
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @bus_slot_disconnect(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local %struct.TYPE_8__* @mfree(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
