; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_rd.c_rd_get_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_rd.c_rd_get_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rd_dev = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.se_device*)* @rd_get_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rd_get_blocks(%struct.se_device* %0) #0 {
  %2 = alloca %struct.se_device*, align 8
  %3 = alloca %struct.rd_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.se_device* %0, %struct.se_device** %2, align 8
  %5 = load %struct.se_device*, %struct.se_device** %2, align 8
  %6 = call %struct.rd_dev* @RD_DEV(%struct.se_device* %5)
  store %struct.rd_dev* %6, %struct.rd_dev** %3, align 8
  %7 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = mul nsw i32 %9, %10
  %12 = load %struct.se_device*, %struct.se_device** %2, align 8
  %13 = getelementptr inbounds %struct.se_device, %struct.se_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %11, %15
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  ret i64 %19
}

declare dso_local %struct.rd_dev* @RD_DEV(%struct.se_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
