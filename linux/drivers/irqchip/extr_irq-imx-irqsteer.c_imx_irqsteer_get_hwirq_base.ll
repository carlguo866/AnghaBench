; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imx-irqsteer.c_imx_irqsteer_get_hwirq_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imx-irqsteer.c_imx_irqsteer_get_hwirq_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqsteer_data = type { i32, i64* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irqsteer_data*, i64)* @imx_irqsteer_get_hwirq_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_irqsteer_get_hwirq_base(%struct.irqsteer_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irqsteer_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.irqsteer_data* %0, %struct.irqsteer_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %27, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.irqsteer_data*, %struct.irqsteer_data** %4, align 8
  %10 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %7
  %14 = load %struct.irqsteer_data*, %struct.irqsteer_data** %4, align 8
  %15 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %24, 64
  store i32 %25, i32* %3, align 4
  br label %33

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %7

30:                                               ; preds = %7
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
