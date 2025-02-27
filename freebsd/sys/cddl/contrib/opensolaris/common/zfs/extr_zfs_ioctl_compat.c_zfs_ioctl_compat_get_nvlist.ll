; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/zfs/extr_zfs_ioctl_compat.c_zfs_ioctl_compat_get_nvlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/zfs/extr_zfs_ioctl_compat.c_zfs_ioctl_compat_get_nvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32**)* @zfs_ioctl_compat_get_nvlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioctl_compat_get_nvlist(i64 %0, i64 %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  store i32* null, i32** %12, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %5, align 4
  br label %30

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @nvlist_unpack(i8* %20, i64 %21, i32** %12, i32 0)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %30

27:                                               ; preds = %17
  %28 = load i32*, i32** %12, align 8
  %29 = load i32**, i32*** %9, align 8
  store i32* %28, i32** %29, align 8
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %25, %15
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @nvlist_unpack(i8*, i64, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
