; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1307.c_ds1307_nvram_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1307.c_ds1307_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chip_desc = type { i64 }
%struct.ds1307 = type { i64, i32 }

@chips = common dso_local global %struct.chip_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @ds1307_nvram_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1307_nvram_read(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ds1307*, align 8
  %10 = alloca %struct.chip_desc*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.ds1307*
  store %struct.ds1307* %12, %struct.ds1307** %9, align 8
  %13 = load %struct.chip_desc*, %struct.chip_desc** @chips, align 8
  %14 = load %struct.ds1307*, %struct.ds1307** %9, align 8
  %15 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %13, i64 %16
  store %struct.chip_desc* %17, %struct.chip_desc** %10, align 8
  %18 = load %struct.ds1307*, %struct.ds1307** %9, align 8
  %19 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.chip_desc*, %struct.chip_desc** %10, align 8
  %22 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @regmap_bulk_read(i32 %20, i64 %26, i8* %27, i64 %28)
  ret i32 %29
}

declare dso_local i32 @regmap_bulk_read(i32, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
