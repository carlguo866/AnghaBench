; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_locking.c_btrfs_set_lock_blocking_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_locking.c_btrfs_set_lock_blocking_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.extent_buffer = type { i64, i64, i32, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_set_lock_blocking_write(%struct.extent_buffer* %0) #0 {
  %2 = alloca %struct.extent_buffer*, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %2, align 8
  %3 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %4 = call i32 @trace_btrfs_set_lock_blocking_write(%struct.extent_buffer* %3)
  %5 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %6 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %35

18:                                               ; preds = %9, %1
  %19 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %20 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %25 = call i32 @btrfs_assert_spinning_writers_put(%struct.extent_buffer* %24)
  %26 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %27 = call i32 @btrfs_assert_tree_locked(%struct.extent_buffer* %26)
  %28 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %29 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %33 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %32, i32 0, i32 2
  %34 = call i32 @write_unlock(i32* %33)
  br label %35

35:                                               ; preds = %17, %23, %18
  ret void
}

declare dso_local i32 @trace_btrfs_set_lock_blocking_write(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_assert_spinning_writers_put(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_assert_tree_locked(%struct.extent_buffer*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
