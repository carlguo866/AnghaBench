; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_find_actor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_find_actor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_iget_args = type { i64, i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @btrfs_find_actor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_find_actor(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.btrfs_iget_args*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.btrfs_iget_args*
  store %struct.btrfs_iget_args* %7, %struct.btrfs_iget_args** %5, align 8
  %8 = load %struct.btrfs_iget_args*, %struct.btrfs_iget_args** %5, align 8
  %9 = getelementptr inbounds %struct.btrfs_iget_args, %struct.btrfs_iget_args* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call i64 @btrfs_ino(%struct.inode* %11)
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.btrfs_iget_args*, %struct.btrfs_iget_args** %5, align 8
  %16 = getelementptr inbounds %struct.btrfs_iget_args, %struct.btrfs_iget_args* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %17, %21
  br label %23

23:                                               ; preds = %14, %2
  %24 = phi i1 [ false, %2 ], [ %22, %14 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local i64 @btrfs_ino(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
