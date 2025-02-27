; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_sdma_7220_setlengen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_sdma_7220_setlengen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i64, i32 }

@kr_senddmalengen = common dso_local global i32 0, align 4
@QIB_7220_SendDmaLenGen_Generation_MSB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*)* @qib_sdma_7220_setlengen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_sdma_7220_setlengen(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %3 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %4 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @kr_senddmalengen, align 4
  %7 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %8 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @qib_write_kreg(i32 %5, i32 %6, i64 %9)
  %11 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %12 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @kr_senddmalengen, align 4
  %15 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %16 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @QIB_7220_SendDmaLenGen_Generation_MSB, align 8
  %19 = shl i64 1, %18
  %20 = or i64 %17, %19
  %21 = call i32 @qib_write_kreg(i32 %13, i32 %14, i64 %20)
  ret void
}

declare dso_local i32 @qib_write_kreg(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
