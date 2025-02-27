; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_dcs_build_pkt_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_dcs_build_pkt_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_dsi = type { i32 }
%struct.mipi_dsi_msg = type { i32, i32, i64 }

@MIPI_DSI_DCS_LONG_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun6i_dsi*, %struct.mipi_dsi_msg*)* @sun6i_dsi_dcs_build_pkt_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_dsi_dcs_build_pkt_hdr(%struct.sun6i_dsi* %0, %struct.mipi_dsi_msg* %1) #0 {
  %3 = alloca %struct.sun6i_dsi*, align 8
  %4 = alloca %struct.mipi_dsi_msg*, align 8
  %5 = alloca i32, align 4
  store %struct.sun6i_dsi* %0, %struct.sun6i_dsi** %3, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %4, align 8
  %6 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %7 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @MIPI_DSI_DCS_LONG_WRITE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %17 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  %20 = and i32 %19, 65535
  %21 = shl i32 %20, 8
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %25 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 65535
  %30 = shl i32 %29, 16
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %58

33:                                               ; preds = %2
  %34 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %35 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %44 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %57

47:                                               ; preds = %33
  %48 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %49 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 16
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %47, %33
  br label %58

58:                                               ; preds = %57, %15
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @sun6i_dsi_ecc_compute(i32 %59)
  %61 = shl i32 %60, 24
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @sun6i_dsi_ecc_compute(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
