; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_sdma_cleanup_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_sdma_cleanup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.qib_pportdata = type { i64, %struct.qib_devdata* }
%struct.qib_devdata = type { i32, i64 }

@QIB_PRESENT = common dso_local global i32 0, align 4
@QIB_BADINTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@qib_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@kr_intclear = common dso_local global i32 0, align 4
@SDmaCleanupDone = common dso_local global i32 0, align 4
@qib_sdma_event_e20_hw_started = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sdma_cleanup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_cleanup_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qib_pportdata*, align 8
  %7 = alloca %struct.qib_devdata*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.qib_pportdata*
  store %struct.qib_pportdata* %9, %struct.qib_pportdata** %6, align 8
  %10 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %11 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %10, i32 0, i32 1
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %11, align 8
  store %struct.qib_devdata* %12, %struct.qib_devdata** %7, align 8
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %14 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @QIB_PRESENT, align 4
  %17 = load i32, i32* @QIB_BADINTR, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = load i32, i32* @QIB_PRESENT, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %23, i32* %3, align 4
  br label %56

24:                                               ; preds = %2
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qib_stats, i32 0, i32 0), align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qib_stats, i32 0, i32 0), align 4
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %28 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, -1
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %33 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  br label %36

36:                                               ; preds = %31, %24
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %38 = load i32, i32* @kr_intclear, align 4
  %39 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %40 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @SDmaCleanupDone, align 4
  %45 = call i32 @INT_MASK_PM(i32 %44, i32 1)
  br label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @SDmaCleanupDone, align 4
  %48 = call i32 @INT_MASK_PM(i32 %47, i32 0)
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i32 [ %45, %43 ], [ %48, %46 ]
  %51 = call i32 @qib_write_kreg(%struct.qib_devdata* %37, i32 %38, i32 %50)
  %52 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %53 = load i32, i32* @qib_sdma_event_e20_hw_started, align 4
  %54 = call i32 @qib_sdma_process_event(%struct.qib_pportdata* %52, i32 %53)
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %49, %22
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @INT_MASK_PM(i32, i32) #1

declare dso_local i32 @qib_sdma_process_event(%struct.qib_pportdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
