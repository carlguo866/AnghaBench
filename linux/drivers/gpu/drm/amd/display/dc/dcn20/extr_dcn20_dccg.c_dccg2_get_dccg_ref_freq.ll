; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dccg.c_dccg2_get_dccg_ref_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dccg.c_dccg2_get_dccg_ref_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dccg = type { i32 }
%struct.dcn_dccg = type { i32 }

@REFCLK_CNTL = common dso_local global i32 0, align 4
@REFCLK_CLOCK_EN = common dso_local global i32 0, align 4
@REFCLK_SRC_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccg2_get_dccg_ref_freq(%struct.dccg* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.dccg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dcn_dccg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.dccg* %0, %struct.dccg** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.dccg*, %struct.dccg** %4, align 8
  %11 = call %struct.dcn_dccg* @TO_DCN_DCCG(%struct.dccg* %10)
  store %struct.dcn_dccg* %11, %struct.dcn_dccg** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %12 = load i32, i32* @REFCLK_CNTL, align 4
  %13 = load i32, i32* @REFCLK_CLOCK_EN, align 4
  %14 = load i32, i32* @REFCLK_SRC_SEL, align 4
  %15 = call i32 @REG_GET_2(i32 %12, i32 %13, i64* %8, i32 %14, i64* %9)
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 @ASSERT_CRITICAL(i32 0)
  br label %20

20:                                               ; preds = %18, %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  ret void
}

declare dso_local %struct.dcn_dccg* @TO_DCN_DCCG(%struct.dccg*) #1

declare dso_local i32 @REG_GET_2(i32, i32, i64*, i32, i64*) #1

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
