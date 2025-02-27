; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r420.c_r420_debugfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r420.c_r420_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Failed to register debugfs file for RBBM !\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to register debugfs file for pipes !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @r420_debugfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r420_debugfs(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = call i64 @r100_debugfs_rbbm_init(%struct.radeon_device* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = call i64 @r420_debugfs_pipes_info_init(%struct.radeon_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

declare dso_local i64 @r100_debugfs_rbbm_init(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @r420_debugfs_pipes_info_init(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
