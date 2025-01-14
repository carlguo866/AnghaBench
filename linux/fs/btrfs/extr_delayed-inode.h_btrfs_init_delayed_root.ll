; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.h_btrfs_init_delayed_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.h_btrfs_init_delayed_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_delayed_root = type { i32, i32, i32, i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_delayed_root*)* @btrfs_init_delayed_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_init_delayed_root(%struct.btrfs_delayed_root* %0) #0 {
  %2 = alloca %struct.btrfs_delayed_root*, align 8
  store %struct.btrfs_delayed_root* %0, %struct.btrfs_delayed_root** %2, align 8
  %3 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %2, align 8
  %4 = getelementptr inbounds %struct.btrfs_delayed_root, %struct.btrfs_delayed_root* %3, i32 0, i32 6
  %5 = call i32 @atomic_set(i32* %4, i32 0)
  %6 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %2, align 8
  %7 = getelementptr inbounds %struct.btrfs_delayed_root, %struct.btrfs_delayed_root* %6, i32 0, i32 5
  %8 = call i32 @atomic_set(i32* %7, i32 0)
  %9 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %2, align 8
  %10 = getelementptr inbounds %struct.btrfs_delayed_root, %struct.btrfs_delayed_root* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %2, align 8
  %12 = getelementptr inbounds %struct.btrfs_delayed_root, %struct.btrfs_delayed_root* %11, i32 0, i32 3
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %2, align 8
  %15 = getelementptr inbounds %struct.btrfs_delayed_root, %struct.btrfs_delayed_root* %14, i32 0, i32 2
  %16 = call i32 @init_waitqueue_head(i32* %15)
  %17 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %2, align 8
  %18 = getelementptr inbounds %struct.btrfs_delayed_root, %struct.btrfs_delayed_root* %17, i32 0, i32 1
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %2, align 8
  %21 = getelementptr inbounds %struct.btrfs_delayed_root, %struct.btrfs_delayed_root* %20, i32 0, i32 0
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
