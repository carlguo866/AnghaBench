; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/zfs/extr_zfs_ioctl_compat.c_zfs_ioctl_compat_fix_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/zfs/extr_zfs_ioctl_compat.c_zfs_ioctl_compat_fix_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @zfs_ioctl_compat_fix_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioctl_compat_fix_stats(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @zfs_ioctl_compat_get_nvlist(i32 %12, i32 %15, i32 %18, i32** %6)
  store i32 %19, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %51

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 5
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  store i32* null, i32** %8, align 8
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32* @nvlist_next_nvpair(i32* %28, i32* %29)
  store i32* %30, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i32*, i32** %8, align 8
  %34 = call i64 @nvpair_value_nvlist(i32* %33, i32** %7)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @zfs_ioctl_compat_fix_stats_nvlist(i32* %37)
  br label %39

39:                                               ; preds = %36, %32
  br label %27

40:                                               ; preds = %27
  store i32* null, i32** %8, align 8
  br label %44

41:                                               ; preds = %23
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @zfs_ioctl_compat_fix_stats_nvlist(i32* %42)
  br label %44

44:                                               ; preds = %41, %40
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @zfs_ioctl_compat_put_nvlist(%struct.TYPE_4__* %45, i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @nvlist_free(i32* %48)
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %44, %21
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @zfs_ioctl_compat_get_nvlist(i32, i32, i32, i32**) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i64 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i32 @zfs_ioctl_compat_fix_stats_nvlist(i32*) #1

declare dso_local i32 @zfs_ioctl_compat_put_nvlist(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
