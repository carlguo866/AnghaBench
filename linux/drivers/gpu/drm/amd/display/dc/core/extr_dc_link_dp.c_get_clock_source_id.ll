; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_get_clock_source_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_get_clock_source_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.clock_source* }
%struct.clock_source = type { i32 }

@CLOCK_SOURCE_ID_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_link*)* @get_clock_source_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_clock_source_id(%struct.dc_link* %0) #0 {
  %2 = alloca %struct.dc_link*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_source*, align 8
  store %struct.dc_link* %0, %struct.dc_link** %2, align 8
  %5 = load i32, i32* @CLOCK_SOURCE_ID_UNDEFINED, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %7 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.clock_source*, %struct.clock_source** %11, align 8
  store %struct.clock_source* %12, %struct.clock_source** %4, align 8
  %13 = load %struct.clock_source*, %struct.clock_source** %4, align 8
  %14 = icmp ne %struct.clock_source* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.clock_source*, %struct.clock_source** %4, align 8
  %17 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.clock_source*, %struct.clock_source** %4, align 8
  %21 = call i32 @ASSERT(%struct.clock_source* %20)
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @ASSERT(%struct.clock_source*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
