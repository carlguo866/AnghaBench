; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_saa_int_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_saa_int_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_dev_info = type { i64* }

@SEC_SAA = common dso_local global i64 0, align 8
@SEC_SAA_BASE = common dso_local global i64 0, align 8
@SEC_ST_INTMSK1_REG = common dso_local global i64 0, align 8
@SEC_SAA_ADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sec_dev_info*, i32, i32)* @sec_saa_int_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_saa_int_mask(%struct.sec_dev_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sec_dev_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sec_dev_info* %0, %struct.sec_dev_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %9 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* @SEC_SAA, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SEC_SAA_BASE, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i64, i64* @SEC_ST_INTMSK1_REG, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SEC_SAA_ADDR_SIZE, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %17, %21
  %23 = call i32 @writel_relaxed(i32 %7, i64 %22)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
