; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_rxq_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_rxq_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64 }

@BE_ERROR_HW = common dso_local global i32 0, align 4
@DB_RQ_RING_ID_MASK = common dso_local global i32 0, align 4
@DB_RQ_NUM_POSTED_SHIFT = common dso_local global i32 0, align 4
@DB_RQ_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*, i32, i32)* @be_rxq_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_rxq_notify(%struct.be_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %9 = load i32, i32* @BE_ERROR_HW, align 4
  %10 = call i64 @be_check_error(%struct.be_adapter* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %32

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @DB_RQ_RING_ID_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @DB_RQ_NUM_POSTED_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = call i32 (...) @wmb()
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DB_RQ_OFFSET, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @iowrite32(i32 %25, i64 %30)
  br label %32

32:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @be_check_error(%struct.be_adapter*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
