; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cache.c_gid_table_release_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cache.c_gid_table_release_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ib_gid_table** }
%struct.ib_gid_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @gid_table_release_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gid_table_release_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.ib_gid_table**, align 8
  %4 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %5 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %6 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.ib_gid_table**, %struct.ib_gid_table*** %7, align 8
  store %struct.ib_gid_table** %8, %struct.ib_gid_table*** %3, align 8
  %9 = load %struct.ib_gid_table**, %struct.ib_gid_table*** %3, align 8
  %10 = icmp ne %struct.ib_gid_table** %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %34

12:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %13

13:                                               ; preds = %25, %12
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %16 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.ib_gid_table**, %struct.ib_gid_table*** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.ib_gid_table*, %struct.ib_gid_table** %20, i64 %21
  %23 = load %struct.ib_gid_table*, %struct.ib_gid_table** %22, align 8
  %24 = call i32 @release_gid_table(%struct.ib_gid_table* %23)
  br label %25

25:                                               ; preds = %19
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %4, align 8
  br label %13

28:                                               ; preds = %13
  %29 = load %struct.ib_gid_table**, %struct.ib_gid_table*** %3, align 8
  %30 = call i32 @kfree(%struct.ib_gid_table** %29)
  %31 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %32 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.ib_gid_table** null, %struct.ib_gid_table*** %33, align 8
  br label %34

34:                                               ; preds = %28, %11
  ret void
}

declare dso_local i32 @release_gid_table(%struct.ib_gid_table*) #1

declare dso_local i32 @kfree(%struct.ib_gid_table**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
