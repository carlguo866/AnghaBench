; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_set_sched_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_set_sched_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.scheduling_resources = type { i64, i64, i32, i64, i64, i64 }

@KGD_MAX_QUEUES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Invalid queue enabled by amdgpu: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Scheduling resources:\0Avmid mask: 0x%8X\0Aqueue mask: 0x%8llX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_queue_manager*)* @set_sched_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sched_resources(%struct.device_queue_manager* %0) #0 {
  %2 = alloca %struct.device_queue_manager*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.scheduling_resources, align 8
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %2, align 8
  %6 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %7 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.scheduling_resources, %struct.scheduling_resources* %5, i32 0, i32 2
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.scheduling_resources, %struct.scheduling_resources* %5, i32 0, i32 0
  store i64 0, i64* %13, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %65, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @KGD_MAX_QUEUES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %68

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %21 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %19, %25
  %27 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %28 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %26, %32
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %36 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @test_bit(i32 %34, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %18
  br label %65

44:                                               ; preds = %18
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %65

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp uge i64 %50, 64
  %52 = zext i1 %51 to i32
  %53 = call i64 @WARN_ON(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %68

58:                                               ; preds = %48
  %59 = load i32, i32* %3, align 4
  %60 = zext i32 %59 to i64
  %61 = shl i64 1, %60
  %62 = getelementptr inbounds %struct.scheduling_resources, %struct.scheduling_resources* %5, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = or i64 %63, %61
  store i64 %64, i64* %62, align 8
  br label %65

65:                                               ; preds = %58, %47, %43
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %14

68:                                               ; preds = %55, %14
  %69 = getelementptr inbounds %struct.scheduling_resources, %struct.scheduling_resources* %5, i32 0, i32 1
  store i64 -1, i64* %69, align 8
  %70 = getelementptr inbounds %struct.scheduling_resources, %struct.scheduling_resources* %5, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = getelementptr inbounds %struct.scheduling_resources, %struct.scheduling_resources* %5, i32 0, i32 4
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds %struct.scheduling_resources, %struct.scheduling_resources* %5, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = getelementptr inbounds %struct.scheduling_resources, %struct.scheduling_resources* %5, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.scheduling_resources, %struct.scheduling_resources* %5, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %74, i64 %76)
  %78 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %79 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %78, i32 0, i32 0
  %80 = call i32 @pm_send_set_resources(i32* %79, %struct.scheduling_resources* %5)
  ret i32 %80
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i32 @pm_send_set_resources(i32*, %struct.scheduling_resources*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
