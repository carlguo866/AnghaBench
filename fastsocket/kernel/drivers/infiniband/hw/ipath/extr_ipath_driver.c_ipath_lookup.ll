; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_ipath_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_ipath_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32 }

@ipath_devs_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipath_devdata* @ipath_lookup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @ipath_devs_lock, i64 %5)
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.ipath_devdata* @__ipath_lookup(i32 %7)
  store %struct.ipath_devdata* %8, %struct.ipath_devdata** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_unlock_irqrestore(i32* @ipath_devs_lock, i64 %9)
  %11 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  ret %struct.ipath_devdata* %11
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ipath_devdata* @__ipath_lookup(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
