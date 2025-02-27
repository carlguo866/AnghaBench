; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_coresight.c_goya_config_funnel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_coresight.c_goya_config_funnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.hl_debug_params = type { i64, i64 }

@debug_funnel_regs = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"Invalid register index in FUNNEL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CFG_BASE = common dso_local global i64 0, align 8
@CORESIGHT_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_debug_params*)* @goya_config_funnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_config_funnel(%struct.hl_device* %0, %struct.hl_debug_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca %struct.hl_debug_params*, align 8
  %6 = alloca i64, align 8
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store %struct.hl_debug_params* %1, %struct.hl_debug_params** %5, align 8
  %7 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %8 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64*, i64** @debug_funnel_regs, align 8
  %11 = call i64 @ARRAY_SIZE(i64* %10)
  %12 = icmp uge i64 %9, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %15 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %41

20:                                               ; preds = %2
  %21 = load i64*, i64** @debug_funnel_regs, align 8
  %22 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %23 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CFG_BASE, align 8
  %28 = sub nsw i64 %26, %27
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, 4016
  %31 = load i32, i32* @CORESIGHT_UNLOCK, align 4
  %32 = call i32 @WREG32(i64 %30, i32 %31)
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %35 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 831, i32 0
  %40 = call i32 @WREG32(i64 %33, i32 %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %20, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
