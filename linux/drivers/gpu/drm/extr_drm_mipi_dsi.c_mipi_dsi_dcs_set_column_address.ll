; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dsi.c_mipi_dsi_dcs_set_column_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dsi.c_mipi_dsi_dcs_set_column_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32 }

@MIPI_DCS_SET_COLUMN_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mipi_dsi_dcs_set_column_address(%struct.mipi_dsi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i64, align 8
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %11 = load i32, i32* %6, align 4
  %12 = ashr i32 %11, 8
  store i32 %12, i32* %10, align 4
  %13 = getelementptr inbounds i32, i32* %10, i64 1
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 255
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds i32, i32* %13, i64 1
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 8
  store i32 %18, i32* %16, align 4
  %19 = getelementptr inbounds i32, i32* %16, i64 1
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 255
  store i32 %21, i32* %19, align 4
  %22 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %23 = load i32, i32* @MIPI_DCS_SET_COLUMN_ADDRESS, align 4
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %25 = call i64 @mipi_dsi_dcs_write(%struct.mipi_dsi_device* %22, i32 %23, i32* %24, i32 16)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i64, i64* %9, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i64 @mipi_dsi_dcs_write(%struct.mipi_dsi_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
