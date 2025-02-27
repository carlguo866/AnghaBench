; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_fill_geometry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_fill_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.hd_geometry = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_block*, %struct.hd_geometry*)* @dasd_eckd_fill_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_fill_geometry(%struct.dasd_block* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca %struct.dasd_block*, align 8
  %4 = alloca %struct.hd_geometry*, align 8
  %5 = alloca %struct.dasd_eckd_private*, align 8
  store %struct.dasd_block* %0, %struct.dasd_block** %3, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %4, align 8
  %6 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %9, align 8
  store %struct.dasd_eckd_private* %10, %struct.dasd_eckd_private** %5, align 8
  %11 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %12 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @dasd_check_blocksize(i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %18 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %17, i32 0, i32 0
  %19 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %20 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @recs_per_track(%struct.TYPE_4__* %18, i32 0, i32 %21)
  %23 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %24 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %16, %2
  %26 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %27 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %31 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %33 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %37 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  ret i32 0
}

declare dso_local i64 @dasd_check_blocksize(i32) #1

declare dso_local i32 @recs_per_track(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
