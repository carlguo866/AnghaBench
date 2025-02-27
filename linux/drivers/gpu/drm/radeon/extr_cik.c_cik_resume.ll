; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@PM_METHOD_DPM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"cik startup failed on resume\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cik_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @atom_asic_init(i32 %8)
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = call i32 @cik_init_golden_registers(%struct.radeon_device* %10)
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PM_METHOD_DPM, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = call i32 @radeon_pm_resume(%struct.radeon_device* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = call i32 @cik_startup(%struct.radeon_device* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %21
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @atom_asic_init(i32) #1

declare dso_local i32 @cik_init_golden_registers(%struct.radeon_device*) #1

declare dso_local i32 @radeon_pm_resume(%struct.radeon_device*) #1

declare dso_local i32 @cik_startup(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
