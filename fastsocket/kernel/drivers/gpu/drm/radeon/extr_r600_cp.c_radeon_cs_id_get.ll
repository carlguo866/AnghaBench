; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_radeon_cs_id_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_radeon_cs_id_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_radeon_private = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_radeon_private*)* @radeon_cs_id_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_cs_id_get(%struct.drm_radeon_private* %0) #0 {
  %2 = alloca %struct.drm_radeon_private*, align 8
  store %struct.drm_radeon_private* %0, %struct.drm_radeon_private** %2, align 8
  %3 = load %struct.drm_radeon_private*, %struct.drm_radeon_private** %2, align 8
  %4 = getelementptr inbounds %struct.drm_radeon_private, %struct.drm_radeon_private* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1
  %7 = and i32 %6, 16777215
  %8 = load %struct.drm_radeon_private*, %struct.drm_radeon_private** %2, align 8
  %9 = getelementptr inbounds %struct.drm_radeon_private, %struct.drm_radeon_private* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.drm_radeon_private*, %struct.drm_radeon_private** %2, align 8
  %11 = getelementptr inbounds %struct.drm_radeon_private, %struct.drm_radeon_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.drm_radeon_private*, %struct.drm_radeon_private** %2, align 8
  %16 = getelementptr inbounds %struct.drm_radeon_private, %struct.drm_radeon_private* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 16777216
  store i32 %18, i32* %16, align 4
  %19 = load %struct.drm_radeon_private*, %struct.drm_radeon_private** %2, align 8
  %20 = getelementptr inbounds %struct.drm_radeon_private, %struct.drm_radeon_private* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.drm_radeon_private*, %struct.drm_radeon_private** %2, align 8
  %23 = getelementptr inbounds %struct.drm_radeon_private, %struct.drm_radeon_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_radeon_private*, %struct.drm_radeon_private** %2, align 8
  %26 = getelementptr inbounds %struct.drm_radeon_private, %struct.drm_radeon_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
