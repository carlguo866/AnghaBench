; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_mmap.c_scif_get_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_mmap.c_scif_get_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_endpt = type { i64 }
%struct.scif_dev = type { %struct.scif_hw_dev* }
%struct.scif_hw_dev = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.scif_endpt*)* @scif_get_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scif_get_phys(i64 %0, %struct.scif_endpt* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.scif_endpt*, align 8
  %5 = alloca %struct.scif_dev*, align 8
  %6 = alloca %struct.scif_hw_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.scif_endpt* %1, %struct.scif_endpt** %4, align 8
  %9 = load %struct.scif_endpt*, %struct.scif_endpt** %4, align 8
  %10 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.scif_dev*
  store %struct.scif_dev* %12, %struct.scif_dev** %5, align 8
  %13 = load %struct.scif_dev*, %struct.scif_dev** %5, align 8
  %14 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %13, i32 0, i32 0
  %15 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %14, align 8
  store %struct.scif_hw_dev* %15, %struct.scif_hw_dev** %6, align 8
  store i64 0, i64* %8, align 8
  %16 = load %struct.scif_dev*, %struct.scif_dev** %5, align 8
  %17 = call i32 @scifdev_self(%struct.scif_dev* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %2
  %20 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %6, align 8
  %21 = getelementptr inbounds %struct.scif_hw_dev, %struct.scif_hw_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %6, align 8
  %26 = getelementptr inbounds %struct.scif_hw_dev, %struct.scif_hw_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %6, align 8
  %31 = getelementptr inbounds %struct.scif_hw_dev, %struct.scif_hw_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %29, %24, %19, %2
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %3, align 8
  %38 = add nsw i64 %36, %37
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  ret i64 %39
}

declare dso_local i32 @scifdev_self(%struct.scif_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
