; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_..transaction.h_btrfs_set_skip_qgroup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_..transaction.h_btrfs_set_skip_qgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_delayed_ref_root }
%struct.btrfs_delayed_ref_root = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_trans_handle*, i32)* @btrfs_set_skip_qgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_set_skip_qgroup(%struct.btrfs_trans_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_trans_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_delayed_ref_root*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %7 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.btrfs_delayed_ref_root* %9, %struct.btrfs_delayed_ref_root** %5, align 8
  %10 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %5, align 8
  %11 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %5, align 8
  %16 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
