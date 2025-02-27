; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_dim2_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_dim2_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dim2_hdm = type { i32 (%struct.platform_device*)*, i32, i32, i32 }

@dim_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dim2_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dim2_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dim2_hdm*, align 8
  %4 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.dim2_hdm* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.dim2_hdm* %6, %struct.dim2_hdm** %3, align 8
  %7 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %8 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %7, i32 0, i32 3
  %9 = call i32 @dim2_sysfs_destroy(i32* %8)
  %10 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %11 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %10, i32 0, i32 2
  %12 = call i32 @most_deregister_interface(i32* %11)
  %13 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %14 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @kthread_stop(i32 %15)
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_lock_irqsave(i32* @dim_lock, i64 %17)
  %19 = call i32 (...) @dim_shutdown()
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @dim_lock, i64 %20)
  %22 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %23 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %22, i32 0, i32 0
  %24 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %23, align 8
  %25 = icmp ne i32 (%struct.platform_device*)* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %28 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %27, i32 0, i32 0
  %29 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %28, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %31 = call i32 %29(%struct.platform_device* %30)
  br label %32

32:                                               ; preds = %26, %1
  ret i32 0
}

declare dso_local %struct.dim2_hdm* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dim2_sysfs_destroy(i32*) #1

declare dso_local i32 @most_deregister_interface(i32*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dim_shutdown(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
