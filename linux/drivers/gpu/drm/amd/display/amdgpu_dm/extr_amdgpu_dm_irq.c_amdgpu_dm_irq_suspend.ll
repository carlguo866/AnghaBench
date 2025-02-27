; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_irq.c_amdgpu_dm_irq_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_irq.c_amdgpu_dm_irq_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, %struct.list_head* }
%struct.TYPE_3__ = type { i32, %struct.list_head }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"DM_IRQ: suspend\0A\00", align 1
@DC_IRQ_SOURCE_HPD1 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_HPD6RX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_dm_irq_suspend(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i32 @DM_IRQ_TABLE_LOCK(%struct.amdgpu_device* %7, i64 %8)
  %10 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @DC_IRQ_SOURCE_HPD1, align 4
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %62, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @DC_IRQ_SOURCE_HPD6RX, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %12
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store %struct.list_head* %24, %struct.list_head** %5, align 8
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load %struct.list_head*, %struct.list_head** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.list_head, %struct.list_head* %28, i64 %30
  store %struct.list_head* %31, %struct.list_head** %4, align 8
  %32 = load %struct.list_head*, %struct.list_head** %5, align 8
  %33 = call i32 @list_empty(%struct.list_head* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %16
  %36 = load %struct.list_head*, %struct.list_head** %4, align 8
  %37 = call i32 @list_empty(%struct.list_head* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %35, %16
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @dc_interrupt_set(i32 %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %39, %35
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @DM_IRQ_TABLE_UNLOCK(%struct.amdgpu_device* %47, i64 %48)
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = call i32 @flush_work(i32* %57)
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @DM_IRQ_TABLE_LOCK(%struct.amdgpu_device* %59, i64 %60)
  br label %62

62:                                               ; preds = %46
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %12

65:                                               ; preds = %12
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @DM_IRQ_TABLE_UNLOCK(%struct.amdgpu_device* %66, i64 %67)
  ret i32 0
}

declare dso_local i32 @DM_IRQ_TABLE_LOCK(%struct.amdgpu_device*, i64) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @dc_interrupt_set(i32, i32, i32) #1

declare dso_local i32 @DM_IRQ_TABLE_UNLOCK(%struct.amdgpu_device*, i64) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
