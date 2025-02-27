; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32, %struct.radeon_bo*, i32* }
%struct.radeon_bo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_ring_fini(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_bo*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %4, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %11 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %10, i32 0, i32 1
  %12 = load %struct.radeon_bo*, %struct.radeon_bo** %11, align 8
  store %struct.radeon_bo* %12, %struct.radeon_bo** %6, align 8
  %13 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %14 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %16 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %18 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %17, i32 0, i32 1
  store %struct.radeon_bo* null, %struct.radeon_bo** %18, align 8
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %23 = icmp ne %struct.radeon_bo* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %2
  %25 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %26 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %25, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @likely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %34 = call i32 @radeon_bo_kunmap(%struct.radeon_bo* %33)
  %35 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %36 = call i32 @radeon_bo_unpin(%struct.radeon_bo* %35)
  %37 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %38 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %37)
  br label %39

39:                                               ; preds = %32, %24
  %40 = call i32 @radeon_bo_unref(%struct.radeon_bo** %6)
  br label %41

41:                                               ; preds = %39, %2
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @radeon_bo_kunmap(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_unpin(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_unref(%struct.radeon_bo**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
