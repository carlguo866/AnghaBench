; ModuleID = '/home/carl/AnghaBench/linux/net/rfkill/extr_core.c_rfkill_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/rfkill/extr_core.c_rfkill_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@KOBJ_CHANGE = common dso_local global i32 0, align 4
@RFKILL_OP_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfkill*)* @rfkill_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfkill_event(%struct.rfkill* %0) #0 {
  %2 = alloca %struct.rfkill*, align 8
  store %struct.rfkill* %0, %struct.rfkill** %2, align 8
  %3 = load %struct.rfkill*, %struct.rfkill** %2, align 8
  %4 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %17

8:                                                ; preds = %1
  %9 = load %struct.rfkill*, %struct.rfkill** %2, align 8
  %10 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* @KOBJ_CHANGE, align 4
  %13 = call i32 @kobject_uevent(i32* %11, i32 %12)
  %14 = load %struct.rfkill*, %struct.rfkill** %2, align 8
  %15 = load i32, i32* @RFKILL_OP_CHANGE, align 4
  %16 = call i32 @rfkill_send_events(%struct.rfkill* %14, i32 %15)
  br label %17

17:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @rfkill_send_events(%struct.rfkill*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
