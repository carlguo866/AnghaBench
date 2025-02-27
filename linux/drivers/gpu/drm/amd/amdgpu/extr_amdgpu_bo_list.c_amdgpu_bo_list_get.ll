; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_bo_list.c_amdgpu_bo_list_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_bo_list.c_amdgpu_bo_list_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_fpriv = type { i32 }
%struct.amdgpu_bo_list = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_bo_list_get(%struct.amdgpu_fpriv* %0, i32 %1, %struct.amdgpu_bo_list** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_fpriv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_bo_list**, align 8
  store %struct.amdgpu_fpriv* %0, %struct.amdgpu_fpriv** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.amdgpu_bo_list** %2, %struct.amdgpu_bo_list*** %7, align 8
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %5, align 8
  %10 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %9, i32 0, i32 0
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.amdgpu_bo_list* @idr_find(i32* %10, i32 %11)
  %13 = load %struct.amdgpu_bo_list**, %struct.amdgpu_bo_list*** %7, align 8
  store %struct.amdgpu_bo_list* %12, %struct.amdgpu_bo_list** %13, align 8
  %14 = load %struct.amdgpu_bo_list**, %struct.amdgpu_bo_list*** %7, align 8
  %15 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %14, align 8
  %16 = icmp ne %struct.amdgpu_bo_list* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.amdgpu_bo_list**, %struct.amdgpu_bo_list*** %7, align 8
  %19 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %18, align 8
  %20 = getelementptr inbounds %struct.amdgpu_bo_list, %struct.amdgpu_bo_list* %19, i32 0, i32 0
  %21 = call i64 @kref_get_unless_zero(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %4, align 4
  br label %29

25:                                               ; preds = %17, %3
  %26 = call i32 (...) @rcu_read_unlock()
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %23
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.amdgpu_bo_list* @idr_find(i32*, i32) #1

declare dso_local i64 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
