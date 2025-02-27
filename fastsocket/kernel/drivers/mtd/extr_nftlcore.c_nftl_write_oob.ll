; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_nftlcore.c_nftl_write_oob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_nftlcore.c_nftl_write_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_ops*)* }
%struct.mtd_oob_ops = type { i32, i64, i64, i32*, i32*, i32 }

@MTD_OOB_PLACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nftl_write_oob(%struct.mtd_info* %0, i32 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mtd_oob_ops, align 8
  %13 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %15 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @MTD_OOB_PLACE, align 4
  %19 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %12, i32 0, i32 5
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %11, align 4
  %22 = and i32 %20, %21
  %23 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %12, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %12, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %12, i32 0, i32 4
  store i32* %26, i32** %27, align 8
  %28 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %12, i32 0, i32 3
  store i32* null, i32** %28, align 8
  %29 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %30 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %29, i32 0, i32 1
  %31 = load i32 (%struct.mtd_info*, i32, %struct.mtd_oob_ops*)*, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_ops*)** %30, align 8
  %32 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %11, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 %31(%struct.mtd_info* %32, i32 %36, %struct.mtd_oob_ops* %12)
  store i32 %37, i32* %13, align 4
  %38 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %12, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %9, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i32, i32* %13, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
