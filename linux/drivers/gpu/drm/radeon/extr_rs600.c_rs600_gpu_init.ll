; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs600.c_rs600_gpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs600.c_rs600_gpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Wait MC idle timeout before updating MC.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rs600_gpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs600_gpu_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = call i32 @r420_pipes_init(%struct.radeon_device* %3)
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call i64 @rs600_mc_wait_for_idle(%struct.radeon_device* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dev_warn(i32 %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @r420_pipes_init(%struct.radeon_device*) #1

declare dso_local i64 @rs600_mc_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
