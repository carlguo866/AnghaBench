; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_get_panel_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_get_panel_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfld_dsi_config = type { i32 }
%struct.mdfld_dsi_pkg_sender = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Invalid parameter\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdfld_dsi_config*, i32, i32*, i32)* @mdfld_dsi_get_panel_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdfld_dsi_get_panel_status(%struct.mdfld_dsi_config* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mdfld_dsi_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mdfld_dsi_pkg_sender*, align 8
  store %struct.mdfld_dsi_config* %0, %struct.mdfld_dsi_config** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %6, align 8
  %12 = call %struct.mdfld_dsi_pkg_sender* @mdfld_dsi_get_pkg_sender(%struct.mdfld_dsi_config* %11)
  store %struct.mdfld_dsi_pkg_sender* %12, %struct.mdfld_dsi_pkg_sender** %10, align 8
  %13 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %10, align 8
  %14 = icmp ne %struct.mdfld_dsi_pkg_sender* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15, %4
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %28

22:                                               ; preds = %15
  %23 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @mdfld_dsi_read_mcs(%struct.mdfld_dsi_pkg_sender* %23, i32 %24, i32* %25, i32 1, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %22, %18
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local %struct.mdfld_dsi_pkg_sender* @mdfld_dsi_get_pkg_sender(%struct.mdfld_dsi_config*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mdfld_dsi_read_mcs(%struct.mdfld_dsi_pkg_sender*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
