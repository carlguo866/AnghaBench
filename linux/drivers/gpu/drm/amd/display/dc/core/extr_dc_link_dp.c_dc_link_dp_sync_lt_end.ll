; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dc_link_dp_sync_lt_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dc_link_dp_sync_lt_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_link_dp_sync_lt_end(%struct.dc_link* %0, i32 %1) #0 {
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %9 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %10 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dp_disable_link_phy(%struct.dc_link* %8, i32 %11)
  br label %13

13:                                               ; preds = %7, %2
  %14 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %15 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  ret i32 1
}

declare dso_local i32 @dp_disable_link_phy(%struct.dc_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
