; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_halo_create_regions.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_halo_create_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i32 }

@WMFW_ADSP2_XM = common dso_local global i32 0, align 4
@WMFW_HALO_XM_PACKED = common dso_local global i32 0, align 4
@WMFW_ADSP2_YM = common dso_local global i32 0, align 4
@WMFW_HALO_YM_PACKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp*, i32, i32, i32)* @wm_halo_create_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_halo_create_regions(%struct.wm_adsp* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wm_adsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca [4 x i32], align 16
  store %struct.wm_adsp* %0, %struct.wm_adsp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %12 = load i32, i32* @WMFW_ADSP2_XM, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* @WMFW_HALO_XM_PACKED, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* @WMFW_ADSP2_YM, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @WMFW_HALO_YM_PACKED, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds i32, i32* %21, i64 1
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds i32, i32* %23, i64 1
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %25, align 4
  %27 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %30 = call i32 @ARRAY_SIZE(i32* %29)
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %33 = call i32 @wm_adsp_create_regions(%struct.wm_adsp* %27, i32 %28, i32 %30, i32* %31, i32* %32)
  ret i32 %33
}

declare dso_local i32 @wm_adsp_create_regions(%struct.wm_adsp*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
