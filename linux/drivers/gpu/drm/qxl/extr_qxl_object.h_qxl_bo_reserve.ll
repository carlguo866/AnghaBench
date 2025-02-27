; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_object.h_qxl_bo_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_object.h_qxl_bo_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_bo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%p reserve failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qxl_bo*, i32)* @qxl_bo_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_bo_reserve(%struct.qxl_bo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qxl_bo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  store %struct.qxl_bo* %0, %struct.qxl_bo** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %9 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %8, i32 0, i32 0
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @ttm_bo_reserve(%struct.TYPE_4__* %9, i32 1, i32 %10, i32* null)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ERESTARTSYS, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %24 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.drm_device*, %struct.drm_device** %26, align 8
  store %struct.drm_device* %27, %struct.drm_device** %7, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.qxl_bo* %31)
  br label %33

33:                                               ; preds = %22, %17
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %33
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @ttm_bo_reserve(%struct.TYPE_4__*, i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.qxl_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
