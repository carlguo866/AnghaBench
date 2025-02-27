; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apr_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.q6asm = type { i32, i32, %struct.apr_device*, %struct.device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apr_device*)* @q6asm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6asm_probe(%struct.apr_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.apr_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.q6asm*, align 8
  store %struct.apr_device* %0, %struct.apr_device** %3, align 8
  %6 = load %struct.apr_device*, %struct.apr_device** %3, align 8
  %7 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %6, i32 0, i32 1
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.q6asm* @devm_kzalloc(%struct.device* %8, i32 32, i32 %9)
  store %struct.q6asm* %10, %struct.q6asm** %5, align 8
  %11 = load %struct.q6asm*, %struct.q6asm** %5, align 8
  %12 = icmp ne %struct.q6asm* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.apr_device*, %struct.apr_device** %3, align 8
  %18 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.q6asm*, %struct.q6asm** %5, align 8
  %21 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %20, i32 0, i32 4
  %22 = call i32 @q6core_get_svc_api_info(i32 %19, i32* %21)
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.q6asm*, %struct.q6asm** %5, align 8
  %25 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %24, i32 0, i32 3
  store %struct.device* %23, %struct.device** %25, align 8
  %26 = load %struct.apr_device*, %struct.apr_device** %3, align 8
  %27 = load %struct.q6asm*, %struct.q6asm** %5, align 8
  %28 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %27, i32 0, i32 2
  store %struct.apr_device* %26, %struct.apr_device** %28, align 8
  %29 = load %struct.q6asm*, %struct.q6asm** %5, align 8
  %30 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %29, i32 0, i32 1
  %31 = call i32 @init_waitqueue_head(i32* %30)
  %32 = load %struct.q6asm*, %struct.q6asm** %5, align 8
  %33 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.q6asm*, %struct.q6asm** %5, align 8
  %37 = call i32 @dev_set_drvdata(%struct.device* %35, %struct.q6asm* %36)
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @of_platform_populate(i32 %40, i32* null, i32* null, %struct.device* %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %16, %13
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.q6asm* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @q6core_get_svc_api_info(i32, i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.q6asm*) #1

declare dso_local i32 @of_platform_populate(i32, i32*, i32*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
