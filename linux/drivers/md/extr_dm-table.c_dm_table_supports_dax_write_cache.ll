; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_supports_dax_write_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_supports_dax_write_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32 }
%struct.dm_target = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.dm_target*, i32, i32*)* }

@device_dax_write_cache_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_table*)* @dm_table_supports_dax_write_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_table_supports_dax_write_cache(%struct.dm_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_table*, align 8
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i32, align 4
  store %struct.dm_table* %0, %struct.dm_table** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %33, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %9 = call i32 @dm_table_get_num_targets(%struct.dm_table* %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %6
  %12 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.dm_target* @dm_table_get_target(%struct.dm_table* %12, i32 %13)
  store %struct.dm_target* %14, %struct.dm_target** %4, align 8
  %15 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %16 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (%struct.dm_target*, i32, i32*)*, i64 (%struct.dm_target*, i32, i32*)** %18, align 8
  %20 = icmp ne i64 (%struct.dm_target*, i32, i32*)* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %11
  %22 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %23 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64 (%struct.dm_target*, i32, i32*)*, i64 (%struct.dm_target*, i32, i32*)** %25, align 8
  %27 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %28 = load i32, i32* @device_dax_write_cache_enabled, align 4
  %29 = call i64 %26(%struct.dm_target* %27, i32 %28, i32* null)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %37

32:                                               ; preds = %21, %11
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %6

36:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @dm_table_get_num_targets(%struct.dm_table*) #1

declare dso_local %struct.dm_target* @dm_table_get_target(%struct.dm_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
