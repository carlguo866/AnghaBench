; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_slram.c_slram_point.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_slram.c_slram_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i8**, i32*)* @slram_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slram_point(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_2__*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %14, align 8
  %18 = load i32*, i32** %13, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %43

23:                                               ; preds = %6
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = add i64 %24, %25
  %27 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %43

34:                                               ; preds = %23
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr i8, i8* %37, i64 %38
  %40 = load i8**, i8*** %12, align 8
  store i8* %39, i8** %40, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64*, i64** %11, align 8
  store i64 %41, i64* %42, align 8
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %34, %31, %20
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
