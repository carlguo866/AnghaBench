; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_umc-drv.c___umc_driver_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_umc-drv.c___umc_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umc_driver = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32*, %struct.module*, i32 }
%struct.module = type { i32 }

@umc_bus_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__umc_driver_register(%struct.umc_driver* %0, %struct.module* %1, i8* %2) #0 {
  %4 = alloca %struct.umc_driver*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i8*, align 8
  store %struct.umc_driver* %0, %struct.umc_driver** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.umc_driver*, %struct.umc_driver** %4, align 8
  %8 = getelementptr inbounds %struct.umc_driver, %struct.umc_driver* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.umc_driver*, %struct.umc_driver** %4, align 8
  %11 = getelementptr inbounds %struct.umc_driver, %struct.umc_driver* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  store i32 %9, i32* %12, align 8
  %13 = load %struct.module*, %struct.module** %5, align 8
  %14 = load %struct.umc_driver*, %struct.umc_driver** %4, align 8
  %15 = getelementptr inbounds %struct.umc_driver, %struct.umc_driver* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store %struct.module* %13, %struct.module** %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.umc_driver*, %struct.umc_driver** %4, align 8
  %19 = getelementptr inbounds %struct.umc_driver, %struct.umc_driver* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i8* %17, i8** %20, align 8
  %21 = load %struct.umc_driver*, %struct.umc_driver** %4, align 8
  %22 = getelementptr inbounds %struct.umc_driver, %struct.umc_driver* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32* @umc_bus_type, i32** %23, align 8
  %24 = load %struct.umc_driver*, %struct.umc_driver** %4, align 8
  %25 = getelementptr inbounds %struct.umc_driver, %struct.umc_driver* %24, i32 0, i32 0
  %26 = call i32 @driver_register(%struct.TYPE_2__* %25)
  ret i32 %26
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
