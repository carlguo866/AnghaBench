; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-dsp.c_skl_dsp_enable_core.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-dsp.c_skl_dsp_enable_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"dsp core power up failed: core_mask %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_dsp_enable_core(%struct.sst_dsp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_dsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @skl_dsp_core_power_up(%struct.sst_dsp* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %14 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @skl_dsp_start_core(%struct.sst_dsp* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %12
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @skl_dsp_core_power_up(%struct.sst_dsp*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @skl_dsp_start_core(%struct.sst_dsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
