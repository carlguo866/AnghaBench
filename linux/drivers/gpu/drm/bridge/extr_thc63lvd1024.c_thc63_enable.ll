; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_thc63lvd1024.c_thc63_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_thc63lvd1024.c_thc63_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.thc63_dev = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Failed to enable regulator \22vcc\22: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @thc63_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thc63_enable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.thc63_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %5 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %6 = call %struct.thc63_dev* @to_thc63(%struct.drm_bridge* %5)
  store %struct.thc63_dev* %6, %struct.thc63_dev** %3, align 8
  %7 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %8 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @regulator_enable(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %15 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %28

19:                                               ; preds = %1
  %20 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %21 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @gpiod_set_value(i32 %22, i32 0)
  %24 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %25 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @gpiod_set_value(i32 %26, i32 1)
  br label %28

28:                                               ; preds = %19, %13
  ret void
}

declare dso_local %struct.thc63_dev* @to_thc63(%struct.drm_bridge*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
