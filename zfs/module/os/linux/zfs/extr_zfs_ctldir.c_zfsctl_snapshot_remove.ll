; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_snapshot_remove.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_snapshot_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zfs_snapshot_lock = common dso_local global i32 0, align 4
@zfs_snapshots_by_name = common dso_local global i32 0, align 4
@zfs_snapshots_by_objsetid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @zfsctl_snapshot_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfsctl_snapshot_remove(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32 @RW_WRITE_HELD(i32* @zfs_snapshot_lock)
  %4 = call i32 @ASSERT(i32 %3)
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @avl_remove(i32* @zfs_snapshots_by_name, i32* %5)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @avl_remove(i32* @zfs_snapshots_by_objsetid, i32* %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @zfsctl_snapshot_rele(i32* %9)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RW_WRITE_HELD(i32*) #1

declare dso_local i32 @avl_remove(i32*, i32*) #1

declare dso_local i32 @zfsctl_snapshot_rele(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
