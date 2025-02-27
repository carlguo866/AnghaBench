; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_lock.c_ttm_read_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_lock.c_ttm_read_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_lock = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_read_unlock(%struct.ttm_lock* %0) #0 {
  %2 = alloca %struct.ttm_lock*, align 8
  store %struct.ttm_lock* %0, %struct.ttm_lock** %2, align 8
  %3 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %4 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %3, i32 0, i32 1
  %5 = call i32 @spin_lock(i32* %4)
  %6 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %7 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, -1
  store i64 %9, i64* %7, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %13 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %12, i32 0, i32 2
  %14 = call i32 @wake_up_all(i32* %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %17 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %16, i32 0, i32 1
  %18 = call i32 @spin_unlock(i32* %17)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
