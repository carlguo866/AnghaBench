; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_interrupt.c_force_msix_interrupt_unmasking.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_interrupt.c_force_msix_interrupt_unmasking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE = common dso_local global i64 0, align 8
@MSIX_MASK_BIT_OFFSET = common dso_local global i64 0, align 8
@MSIX_VECTOR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gasket_dev*)* @force_msix_interrupt_unmasking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @force_msix_interrupt_unmasking(%struct.gasket_dev* %0) #0 {
  %2 = alloca %struct.gasket_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.gasket_dev* %0, %struct.gasket_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %40, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %9 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %7, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %6
  %15 = load i32, i32* %3, align 4
  %16 = mul nsw i32 %15, 16
  %17 = add nsw i32 288780, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %4, align 8
  %19 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %20 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %21 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @gasket_dev_read_32(%struct.gasket_dev* %19, i32 %24, i64 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %14
  br label %40

31:                                               ; preds = %14
  %32 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %33 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %34 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @gasket_dev_write_32(%struct.gasket_dev* %32, i32 0, i32 %37, i64 %38)
  br label %40

40:                                               ; preds = %31, %30
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %6

43:                                               ; preds = %6
  ret void
}

declare dso_local i32 @gasket_dev_read_32(%struct.gasket_dev*, i32, i64) #1

declare dso_local i32 @gasket_dev_write_32(%struct.gasket_dev*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
