; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_p9_sbe.c_p9_sbe_occ_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_p9_sbe.c_p9_sbe_occ_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.occ = type { i32 }
%struct.p9_sbe_occ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @p9_sbe_occ_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_sbe_occ_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.occ*, align 8
  %4 = alloca %struct.p9_sbe_occ*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.occ* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.occ* %6, %struct.occ** %3, align 8
  %7 = load %struct.occ*, %struct.occ** %3, align 8
  %8 = call %struct.p9_sbe_occ* @to_p9_sbe_occ(%struct.occ* %7)
  store %struct.p9_sbe_occ* %8, %struct.p9_sbe_occ** %4, align 8
  %9 = load %struct.p9_sbe_occ*, %struct.p9_sbe_occ** %4, align 8
  %10 = getelementptr inbounds %struct.p9_sbe_occ, %struct.p9_sbe_occ* %9, i32 0, i32 0
  store i32* null, i32** %10, align 8
  %11 = load %struct.occ*, %struct.occ** %3, align 8
  %12 = call i32 @occ_shutdown(%struct.occ* %11)
  ret i32 0
}

declare dso_local %struct.occ* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.p9_sbe_occ* @to_p9_sbe_occ(%struct.occ*) #1

declare dso_local i32 @occ_shutdown(%struct.occ*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
