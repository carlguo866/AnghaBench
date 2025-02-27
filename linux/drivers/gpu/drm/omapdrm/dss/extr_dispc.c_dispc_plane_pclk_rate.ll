; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_plane_pclk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_plane_pclk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }

@OMAP_DSS_WB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dispc_device*, i32)* @dispc_plane_pclk_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dispc_plane_pclk_rate(%struct.dispc_device* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.dispc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @OMAP_DSS_WB, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %18

11:                                               ; preds = %2
  %12 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @dispc_ovl_get_channel_out(%struct.dispc_device* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @dispc_mgr_pclk_rate(%struct.dispc_device* %15, i32 %16)
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %11, %10
  %19 = load i64, i64* %3, align 8
  ret i64 %19
}

declare dso_local i32 @dispc_ovl_get_channel_out(%struct.dispc_device*, i32) #1

declare dso_local i64 @dispc_mgr_pclk_rate(%struct.dispc_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
