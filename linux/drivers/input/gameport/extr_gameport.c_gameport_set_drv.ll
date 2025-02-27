; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c_gameport_set_drv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c_gameport_set_drv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32, %struct.gameport_driver* }
%struct.gameport_driver = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*, %struct.gameport_driver*)* @gameport_set_drv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gameport_set_drv(%struct.gameport* %0, %struct.gameport_driver* %1) #0 {
  %3 = alloca %struct.gameport*, align 8
  %4 = alloca %struct.gameport_driver*, align 8
  store %struct.gameport* %0, %struct.gameport** %3, align 8
  store %struct.gameport_driver* %1, %struct.gameport_driver** %4, align 8
  %5 = load %struct.gameport*, %struct.gameport** %3, align 8
  %6 = getelementptr inbounds %struct.gameport, %struct.gameport* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.gameport_driver*, %struct.gameport_driver** %4, align 8
  %9 = load %struct.gameport*, %struct.gameport** %3, align 8
  %10 = getelementptr inbounds %struct.gameport, %struct.gameport* %9, i32 0, i32 1
  store %struct.gameport_driver* %8, %struct.gameport_driver** %10, align 8
  %11 = load %struct.gameport*, %struct.gameport** %3, align 8
  %12 = getelementptr inbounds %struct.gameport, %struct.gameport* %11, i32 0, i32 0
  %13 = call i32 @mutex_unlock(i32* %12)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
