; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_cache.c_squashfs_cache_put.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_cache.c_squashfs_cache_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.squashfs_cache_entry = type { i64, %struct.squashfs_cache* }
%struct.squashfs_cache = type { i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @squashfs_cache_put(%struct.squashfs_cache_entry* %0) #0 {
  %2 = alloca %struct.squashfs_cache_entry*, align 8
  %3 = alloca %struct.squashfs_cache*, align 8
  store %struct.squashfs_cache_entry* %0, %struct.squashfs_cache_entry** %2, align 8
  %4 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %2, align 8
  %5 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %4, i32 0, i32 1
  %6 = load %struct.squashfs_cache*, %struct.squashfs_cache** %5, align 8
  store %struct.squashfs_cache* %6, %struct.squashfs_cache** %3, align 8
  %7 = load %struct.squashfs_cache*, %struct.squashfs_cache** %3, align 8
  %8 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %2, align 8
  %11 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %2, align 8
  %15 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %1
  %19 = load %struct.squashfs_cache*, %struct.squashfs_cache** %3, align 8
  %20 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.squashfs_cache*, %struct.squashfs_cache** %3, align 8
  %24 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.squashfs_cache*, %struct.squashfs_cache** %3, align 8
  %29 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.squashfs_cache*, %struct.squashfs_cache** %3, align 8
  %32 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %31, i32 0, i32 1
  %33 = call i32 @wake_up(i32* %32)
  br label %39

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.squashfs_cache*, %struct.squashfs_cache** %3, align 8
  %37 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  br label %39

39:                                               ; preds = %35, %27
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
