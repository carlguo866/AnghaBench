; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_objset_stats.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_objset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @zfs_ioc_objset_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_objset_stats(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @FTAG, align 4
  %9 = call i32 @dmu_objset_hold(i32 %7, i32 %8, i32** %3)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @zfs_ioc_objset_stats_impl(%struct.TYPE_4__* %13, i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @FTAG, align 4
  %18 = call i32 @dmu_objset_rele(i32* %16, i32 %17)
  br label %19

19:                                               ; preds = %12, %1
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i32 @dmu_objset_hold(i32, i32, i32**) #1

declare dso_local i32 @zfs_ioc_objset_stats_impl(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @dmu_objset_rele(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
