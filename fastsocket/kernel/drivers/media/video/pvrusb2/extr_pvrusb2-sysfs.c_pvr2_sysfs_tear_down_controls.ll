; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-sysfs.c_pvr2_sysfs_tear_down_controls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-sysfs.c_pvr2_sysfs_tear_down_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_sysfs = type { %struct.TYPE_2__*, %struct.pvr2_sysfs_ctl_item* }
%struct.TYPE_2__ = type { i32 }
%struct.pvr2_sysfs_ctl_item = type { i32, i64, %struct.pvr2_sysfs_ctl_item* }

@.str = private unnamed_addr constant [37 x i8] c"Destroying pvr2_sysfs_ctl_item id=%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_sysfs*)* @pvr2_sysfs_tear_down_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_sysfs_tear_down_controls(%struct.pvr2_sysfs* %0) #0 {
  %2 = alloca %struct.pvr2_sysfs*, align 8
  %3 = alloca %struct.pvr2_sysfs_ctl_item*, align 8
  %4 = alloca %struct.pvr2_sysfs_ctl_item*, align 8
  store %struct.pvr2_sysfs* %0, %struct.pvr2_sysfs** %2, align 8
  %5 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %6 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %5, i32 0, i32 1
  %7 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %6, align 8
  store %struct.pvr2_sysfs_ctl_item* %7, %struct.pvr2_sysfs_ctl_item** %3, align 8
  br label %8

8:                                                ; preds = %32, %1
  %9 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %3, align 8
  %10 = icmp ne %struct.pvr2_sysfs_ctl_item* %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %3, align 8
  %13 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %12, i32 0, i32 2
  %14 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %13, align 8
  store %struct.pvr2_sysfs_ctl_item* %14, %struct.pvr2_sysfs_ctl_item** %4, align 8
  %15 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %3, align 8
  %16 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %21 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %3, align 8
  %25 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %24, i32 0, i32 0
  %26 = call i32 @sysfs_remove_group(i32* %23, i32* %25)
  br label %27

27:                                               ; preds = %19, %11
  %28 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %3, align 8
  %29 = call i32 @pvr2_sysfs_trace(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.pvr2_sysfs_ctl_item* %28)
  %30 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %3, align 8
  %31 = call i32 @kfree(%struct.pvr2_sysfs_ctl_item* %30)
  br label %32

32:                                               ; preds = %27
  %33 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %4, align 8
  store %struct.pvr2_sysfs_ctl_item* %33, %struct.pvr2_sysfs_ctl_item** %3, align 8
  br label %8

34:                                               ; preds = %8
  ret void
}

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @pvr2_sysfs_trace(i8*, %struct.pvr2_sysfs_ctl_item*) #1

declare dso_local i32 @kfree(%struct.pvr2_sysfs_ctl_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
