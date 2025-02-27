; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_csa.c_amdgpu_allocate_static_csa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_csa.c_amdgpu_allocate_static_csa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.amdgpu_bo = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_allocate_static_csa(%struct.amdgpu_device* %0, %struct.amdgpu_bo** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_bo**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_bo** %1, %struct.amdgpu_bo*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %7, align 8
  %17 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %12, i32 %13, i32 %14, i32 %15, %struct.amdgpu_bo** %16, i32* null, i8** %11)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %7, align 8
  %19 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %18, align 8
  %20 = icmp ne %struct.amdgpu_bo* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %32

24:                                               ; preds = %4
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @memset(i8* %25, i32 0, i32 %26)
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %24, %21
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i32, i32, i32, %struct.amdgpu_bo**, i32*, i8**) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
