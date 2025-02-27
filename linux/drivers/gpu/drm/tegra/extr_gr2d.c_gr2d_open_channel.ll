; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gr2d.c_gr2d_open_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gr2d.c_gr2d_open_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_drm_client = type { i32 }
%struct.tegra_drm_context = type { i32 }
%struct.gr2d = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_drm_client*, %struct.tegra_drm_context*)* @gr2d_open_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gr2d_open_channel(%struct.tegra_drm_client* %0, %struct.tegra_drm_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_drm_client*, align 8
  %5 = alloca %struct.tegra_drm_context*, align 8
  %6 = alloca %struct.gr2d*, align 8
  store %struct.tegra_drm_client* %0, %struct.tegra_drm_client** %4, align 8
  store %struct.tegra_drm_context* %1, %struct.tegra_drm_context** %5, align 8
  %7 = load %struct.tegra_drm_client*, %struct.tegra_drm_client** %4, align 8
  %8 = call %struct.gr2d* @to_gr2d(%struct.tegra_drm_client* %7)
  store %struct.gr2d* %8, %struct.gr2d** %6, align 8
  %9 = load %struct.gr2d*, %struct.gr2d** %6, align 8
  %10 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @host1x_channel_get(i32 %11)
  %13 = load %struct.tegra_drm_context*, %struct.tegra_drm_context** %5, align 8
  %14 = getelementptr inbounds %struct.tegra_drm_context, %struct.tegra_drm_context* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.tegra_drm_context*, %struct.tegra_drm_context** %5, align 8
  %16 = getelementptr inbounds %struct.tegra_drm_context, %struct.tegra_drm_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.gr2d* @to_gr2d(%struct.tegra_drm_client*) #1

declare dso_local i32 @host1x_channel_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
