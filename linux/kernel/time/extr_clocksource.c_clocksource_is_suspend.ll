; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_clocksource.c_clocksource_is_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_clocksource.c_clocksource_is_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32 }

@suspend_clocksource = common dso_local global %struct.clocksource* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clocksource*)* @clocksource_is_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clocksource_is_suspend(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %3 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %4 = load %struct.clocksource*, %struct.clocksource** @suspend_clocksource, align 8
  %5 = icmp eq %struct.clocksource* %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
