; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdpart.c_part_unpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdpart.c_part_unpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_part = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i64, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64)* @part_unpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @part_unpoint(%struct.mtd_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mtd_part*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %9 = call %struct.mtd_part* @mtd_to_part(%struct.mtd_info* %8)
  store %struct.mtd_part* %9, %struct.mtd_part** %7, align 8
  %10 = load %struct.mtd_part*, %struct.mtd_part** %7, align 8
  %11 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_2__*, i64, i64)*, i32 (%struct.TYPE_2__*, i64, i64)** %13, align 8
  %15 = load %struct.mtd_part*, %struct.mtd_part** %7, align 8
  %16 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.mtd_part*, %struct.mtd_part** %7, align 8
  %20 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load i64, i64* %6, align 8
  %24 = call i32 %14(%struct.TYPE_2__* %17, i64 %22, i64 %23)
  ret i32 %24
}

declare dso_local %struct.mtd_part* @mtd_to_part(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
