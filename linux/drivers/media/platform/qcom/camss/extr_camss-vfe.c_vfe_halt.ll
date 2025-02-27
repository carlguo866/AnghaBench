; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { {}* }

@VFE_HALT_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"VFE halt timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfe_device*)* @vfe_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_halt(%struct.vfe_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfe_device*, align 8
  %4 = alloca i64, align 8
  store %struct.vfe_device* %0, %struct.vfe_device** %3, align 8
  %5 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %6 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %5, i32 0, i32 1
  %7 = call i32 @reinit_completion(i32* %6)
  %8 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %9 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.vfe_device*)**
  %13 = load i32 (%struct.vfe_device*)*, i32 (%struct.vfe_device*)** %12, align 8
  %14 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %15 = call i32 %13(%struct.vfe_device* %14)
  %16 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %17 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %16, i32 0, i32 1
  %18 = load i32, i32* @VFE_HALT_TIMEOUT_MS, align 4
  %19 = call i32 @msecs_to_jiffies(i32 %18)
  %20 = call i64 @wait_for_completion_timeout(i32* %17, i32 %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %1
  %24 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %25 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
