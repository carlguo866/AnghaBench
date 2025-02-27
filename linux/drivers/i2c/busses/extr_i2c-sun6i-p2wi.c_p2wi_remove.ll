; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sun6i-p2wi.c_p2wi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sun6i-p2wi.c_p2wi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.p2wi = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @p2wi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p2wi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.p2wi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.p2wi* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.p2wi* %5, %struct.p2wi** %3, align 8
  %6 = load %struct.p2wi*, %struct.p2wi** %3, align 8
  %7 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @reset_control_assert(i32 %8)
  %10 = load %struct.p2wi*, %struct.p2wi** %3, align 8
  %11 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clk_disable_unprepare(i32 %12)
  %14 = load %struct.p2wi*, %struct.p2wi** %3, align 8
  %15 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %14, i32 0, i32 0
  %16 = call i32 @i2c_del_adapter(i32* %15)
  ret i32 0
}

declare dso_local %struct.p2wi* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
