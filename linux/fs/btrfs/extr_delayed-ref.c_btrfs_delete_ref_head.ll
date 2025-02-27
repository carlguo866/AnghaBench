; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_btrfs_delete_ref_head.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_btrfs_delete_ref_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_delayed_ref_root = type { i32, i32, i32, i32, i32 }
%struct.btrfs_delayed_ref_head = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_delete_ref_head(%struct.btrfs_delayed_ref_root* %0, %struct.btrfs_delayed_ref_head* %1) #0 {
  %3 = alloca %struct.btrfs_delayed_ref_root*, align 8
  %4 = alloca %struct.btrfs_delayed_ref_head*, align 8
  store %struct.btrfs_delayed_ref_root* %0, %struct.btrfs_delayed_ref_root** %3, align 8
  store %struct.btrfs_delayed_ref_head* %1, %struct.btrfs_delayed_ref_head** %4, align 8
  %5 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %3, align 8
  %6 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %5, i32 0, i32 4
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %4, align 8
  %9 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %8, i32 0, i32 2
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %4, align 8
  %12 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %11, i32 0, i32 1
  %13 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %3, align 8
  %14 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %13, i32 0, i32 3
  %15 = call i32 @rb_erase_cached(i32* %12, i32* %14)
  %16 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %4, align 8
  %17 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %16, i32 0, i32 1
  %18 = call i32 @RB_CLEAR_NODE(i32* %17)
  %19 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %3, align 8
  %20 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %19, i32 0, i32 2
  %21 = call i32 @atomic_dec(i32* %20)
  %22 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %3, align 8
  %23 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %4, align 8
  %27 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %3, align 8
  %32 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %30, %2
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @rb_erase_cached(i32*, i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
