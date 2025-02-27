; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_phy.c_et131x_xcvr_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_phy.c_et131x_xcvr_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@MI_REGS_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @et131x_xcvr_find(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca i64, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %56, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 32
  br i1 %12, label %13, label %59

13:                                               ; preds = %10
  %14 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MI_REGS_t, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @offsetof(i32 %16, i32 %18)
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %22 = call i32 @PhyMiRead(%struct.et131x_adapter* %14, i32 %15, i32 %20, i32* %21)
  %23 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @MI_REGS_t, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @offsetof(i32 %25, i32 %27)
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %31 = call i32 @PhyMiRead(%struct.et131x_adapter* %23, i32 %24, i32 %29, i32* %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 16
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %34, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %13
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 65535
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i64 %47, i64* %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  store i32 0, i32* %3, align 4
  br label %59

55:                                               ; preds = %42, %13
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %10

59:                                               ; preds = %46, %10
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @PhyMiRead(%struct.et131x_adapter*, i32, i32, i32*) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
