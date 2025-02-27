; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_bitmap.c_reiserfs_discard_prealloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_bitmap.c_reiserfs_discard_prealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32 }
%struct.inode = type { i32 }
%struct.reiserfs_inode_info = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reiserfs_discard_prealloc(%struct.reiserfs_transaction_handle* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.reiserfs_transaction_handle*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.reiserfs_inode_info*, align 8
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %4, align 8
  %7 = call %struct.reiserfs_inode_info* @REISERFS_I(%struct.inode* %6)
  store %struct.reiserfs_inode_info* %7, %struct.reiserfs_inode_info** %5, align 8
  %8 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %9 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.reiserfs_inode_info*, %struct.reiserfs_inode_info** %5, align 8
  %16 = getelementptr inbounds %struct.reiserfs_inode_info, %struct.reiserfs_inode_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %21 = load %struct.reiserfs_inode_info*, %struct.reiserfs_inode_info** %5, align 8
  %22 = call i32 @__discard_prealloc(%struct.reiserfs_transaction_handle* %20, %struct.reiserfs_inode_info* %21)
  br label %23

23:                                               ; preds = %19, %2
  ret void
}

declare dso_local %struct.reiserfs_inode_info* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__discard_prealloc(%struct.reiserfs_transaction_handle*, %struct.reiserfs_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
