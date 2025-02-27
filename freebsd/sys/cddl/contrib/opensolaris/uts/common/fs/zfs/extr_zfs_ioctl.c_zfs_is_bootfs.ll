; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_is_bootfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_is_bootfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FTAG = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @zfs_is_bootfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_is_bootfs(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @FTAG, align 4
  %8 = call i64 @dmu_objset_hold(i8* %6, i32 %7, i32** %4)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @dmu_objset_id(i32* %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @dmu_objset_spa(i32* %13)
  %15 = call i64 @spa_bootfs(i32 %14)
  %16 = icmp eq i64 %12, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @FTAG, align 4
  %20 = call i32 @dmu_objset_rele(i32* %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @B_FALSE, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @dmu_objset_hold(i8*, i32, i32**) #1

declare dso_local i64 @dmu_objset_id(i32*) #1

declare dso_local i64 @spa_bootfs(i32) #1

declare dso_local i32 @dmu_objset_spa(i32*) #1

declare dso_local i32 @dmu_objset_rele(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
