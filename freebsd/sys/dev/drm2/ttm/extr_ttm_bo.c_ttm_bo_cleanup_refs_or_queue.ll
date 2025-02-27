; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_cleanup_refs_or_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_cleanup_refs_or_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, i32, i32, i64, %struct.ttm_bo_global*, %struct.ttm_bo_device* }
%struct.ttm_bo_global = type { i32 }
%struct.ttm_bo_device = type { i32, i32, i32, %struct.ttm_bo_driver* }
%struct.ttm_bo_driver = type { i32 (i8**)*, i32 (i8*)*, i8* (i64)* }

@taskqueue_thread = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_buffer_object*)* @ttm_bo_cleanup_refs_or_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_bo_cleanup_refs_or_queue(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca %struct.ttm_buffer_object*, align 8
  %3 = alloca %struct.ttm_bo_device*, align 8
  %4 = alloca %struct.ttm_bo_global*, align 8
  %5 = alloca %struct.ttm_bo_driver*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %2, align 8
  %9 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %10 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %9, i32 0, i32 5
  %11 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %10, align 8
  store %struct.ttm_bo_device* %11, %struct.ttm_bo_device** %3, align 8
  %12 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %13 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %12, i32 0, i32 4
  %14 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %13, align 8
  store %struct.ttm_bo_global* %14, %struct.ttm_bo_global** %4, align 8
  %15 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %16 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %15, i32 0, i32 3
  %17 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %16, align 8
  store %struct.ttm_bo_driver* %17, %struct.ttm_bo_driver** %5, align 8
  store i8* null, i8** %6, align 8
  %18 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %4, align 8
  %19 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %18, i32 0, i32 0
  %20 = call i32 @mtx_lock(i32* %19)
  %21 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %22 = call i32 @ttm_bo_reserve_nolru(%struct.ttm_buffer_object* %21, i32 0, i32 1, i32 0, i32 0)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %24 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %23, i32 0, i32 2
  %25 = call i32 @mtx_lock(i32* %24)
  %26 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %27 = call i32 @ttm_bo_wait(%struct.ttm_buffer_object* %26, i32 0, i32 0, i32 1)
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %1
  %31 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %32 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %30
  %36 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %37 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %36, i32 0, i32 2
  %38 = call i32 @mtx_unlock(i32* %37)
  %39 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %40 = call i32 @ttm_bo_del_from_lru(%struct.ttm_buffer_object* %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %4, align 8
  %42 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %41, i32 0, i32 0
  %43 = call i32 @mtx_unlock(i32* %42)
  %44 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %45 = call i32 @ttm_bo_cleanup_memtype_use(%struct.ttm_buffer_object* %44)
  %46 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @ttm_bo_list_ref_sub(%struct.ttm_buffer_object* %46, i32 %47, i32 1)
  br label %112

49:                                               ; preds = %30, %1
  %50 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %51 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %5, align 8
  %56 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %55, i32 0, i32 2
  %57 = load i8* (i64)*, i8* (i64)** %56, align 8
  %58 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %59 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = call i8* %57(i64 %60)
  store i8* %61, i8** %6, align 8
  br label %62

62:                                               ; preds = %54, %49
  %63 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %64 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %63, i32 0, i32 2
  %65 = call i32 @mtx_unlock(i32* %64)
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %70 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %69, i32 0, i32 2
  %71 = call i32 @atomic_set(i32* %70, i32 0)
  %72 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %73 = call i32 @wakeup(%struct.ttm_buffer_object* %72)
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %76 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %75, i32 0, i32 1
  %77 = call i32 @refcount_acquire(i32* %76)
  %78 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %79 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %78, i32 0, i32 0
  %80 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %81 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %80, i32 0, i32 1
  %82 = call i32 @list_add_tail(i32* %79, i32* %81)
  %83 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %4, align 8
  %84 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %83, i32 0, i32 0
  %85 = call i32 @mtx_unlock(i32* %84)
  %86 = load i8*, i8** %6, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %74
  %89 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %5, align 8
  %90 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %89, i32 0, i32 1
  %91 = load i32 (i8*)*, i32 (i8*)** %90, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 %91(i8* %92)
  %94 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %5, align 8
  %95 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %94, i32 0, i32 0
  %96 = load i32 (i8**)*, i32 (i8**)** %95, align 8
  %97 = call i32 %96(i8** %6)
  br label %98

98:                                               ; preds = %88, %74
  %99 = load i32, i32* @taskqueue_thread, align 4
  %100 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %101 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %100, i32 0, i32 0
  %102 = load i32, i32* @hz, align 4
  %103 = sdiv i32 %102, 100
  %104 = icmp slt i32 %103, 1
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %109

106:                                              ; preds = %98
  %107 = load i32, i32* @hz, align 4
  %108 = sdiv i32 %107, 100
  br label %109

109:                                              ; preds = %106, %105
  %110 = phi i32 [ 1, %105 ], [ %108, %106 ]
  %111 = call i32 @taskqueue_enqueue_timeout(i32 %99, i32* %101, i32 %110)
  br label %112

112:                                              ; preds = %109, %35
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ttm_bo_reserve_nolru(%struct.ttm_buffer_object*, i32, i32, i32, i32) #1

declare dso_local i32 @ttm_bo_wait(%struct.ttm_buffer_object*, i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ttm_bo_del_from_lru(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_cleanup_memtype_use(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_list_ref_sub(%struct.ttm_buffer_object*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wakeup(%struct.ttm_buffer_object*) #1

declare dso_local i32 @refcount_acquire(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @taskqueue_enqueue_timeout(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
