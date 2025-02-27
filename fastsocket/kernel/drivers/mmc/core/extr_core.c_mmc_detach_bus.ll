; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_detach_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_detach_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_detach_bus(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = icmp ne %struct.mmc_host* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %10 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %17 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %24 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %23, i32 0, i32 1
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %28 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %30 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %29, i32 0, i32 1
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %34 = call i32 @mmc_power_off(%struct.mmc_host* %33)
  %35 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %36 = call i32 @mmc_bus_put(%struct.mmc_host* %35)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mmc_power_off(%struct.mmc_host*) #1

declare dso_local i32 @mmc_bus_put(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
