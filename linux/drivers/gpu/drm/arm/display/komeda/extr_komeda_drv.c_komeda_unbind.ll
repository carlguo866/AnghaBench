; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_drv.c_komeda_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_drv.c_komeda_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.komeda_drv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @komeda_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @komeda_unbind(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.komeda_drv*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.komeda_drv* @dev_get_drvdata(%struct.device* %4)
  store %struct.komeda_drv* %5, %struct.komeda_drv** %3, align 8
  %6 = load %struct.komeda_drv*, %struct.komeda_drv** %3, align 8
  %7 = icmp ne %struct.komeda_drv* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %23

9:                                                ; preds = %1
  %10 = load %struct.komeda_drv*, %struct.komeda_drv** %3, align 8
  %11 = getelementptr inbounds %struct.komeda_drv, %struct.komeda_drv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @komeda_kms_detach(i32 %12)
  %14 = load %struct.komeda_drv*, %struct.komeda_drv** %3, align 8
  %15 = getelementptr inbounds %struct.komeda_drv, %struct.komeda_drv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @komeda_dev_destroy(i32 %16)
  %18 = load %struct.device*, %struct.device** %2, align 8
  %19 = call i32 @dev_set_drvdata(%struct.device* %18, i32* null)
  %20 = load %struct.device*, %struct.device** %2, align 8
  %21 = load %struct.komeda_drv*, %struct.komeda_drv** %3, align 8
  %22 = call i32 @devm_kfree(%struct.device* %20, %struct.komeda_drv* %21)
  br label %23

23:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.komeda_drv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @komeda_kms_detach(i32) #1

declare dso_local i32 @komeda_dev_destroy(i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i32*) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.komeda_drv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
