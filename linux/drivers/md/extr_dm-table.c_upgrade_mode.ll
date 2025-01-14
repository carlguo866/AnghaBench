; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_upgrade_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_upgrade_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dev_internal = type { %struct.dm_dev* }
%struct.dm_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mapped_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_dev_internal*, i32, %struct.mapped_device*)* @upgrade_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgrade_mode(%struct.dm_dev_internal* %0, i32 %1, %struct.mapped_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_dev_internal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mapped_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_dev*, align 8
  %10 = alloca %struct.dm_dev*, align 8
  store %struct.dm_dev_internal* %0, %struct.dm_dev_internal** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mapped_device* %2, %struct.mapped_device** %7, align 8
  %11 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %5, align 8
  %12 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %11, i32 0, i32 0
  %13 = load %struct.dm_dev*, %struct.dm_dev** %12, align 8
  store %struct.dm_dev* %13, %struct.dm_dev** %9, align 8
  %14 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %15 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %5, align 8
  %16 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %15, i32 0, i32 0
  %17 = load %struct.dm_dev*, %struct.dm_dev** %16, align 8
  %18 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %5, align 8
  %23 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %22, i32 0, i32 0
  %24 = load %struct.dm_dev*, %struct.dm_dev** %23, align 8
  %25 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @dm_get_table_device(%struct.mapped_device* %14, i32 %21, i32 %28, %struct.dm_dev** %10)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %41

34:                                               ; preds = %3
  %35 = load %struct.dm_dev*, %struct.dm_dev** %10, align 8
  %36 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %5, align 8
  %37 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %36, i32 0, i32 0
  store %struct.dm_dev* %35, %struct.dm_dev** %37, align 8
  %38 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %39 = load %struct.dm_dev*, %struct.dm_dev** %9, align 8
  %40 = call i32 @dm_put_table_device(%struct.mapped_device* %38, %struct.dm_dev* %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %34, %32
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @dm_get_table_device(%struct.mapped_device*, i32, i32, %struct.dm_dev**) #1

declare dso_local i32 @dm_put_table_device(%struct.mapped_device*, %struct.dm_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
