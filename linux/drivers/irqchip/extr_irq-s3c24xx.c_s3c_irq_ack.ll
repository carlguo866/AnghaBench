; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-s3c24xx.c_s3c_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-s3c24xx.c_s3c_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.s3c_irq_data = type { i64, %struct.s3c_irq_intc* }
%struct.s3c_irq_intc = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @s3c_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_irq_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.s3c_irq_data*, align 8
  %4 = alloca %struct.s3c_irq_intc*, align 8
  %5 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.s3c_irq_data* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.s3c_irq_data* %7, %struct.s3c_irq_data** %3, align 8
  %8 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %3, align 8
  %9 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %8, i32 0, i32 1
  %10 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %9, align 8
  store %struct.s3c_irq_intc* %10, %struct.s3c_irq_intc** %4, align 8
  %11 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %3, align 8
  %12 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = shl i64 1, %13
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %4, align 8
  %17 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @writel_relaxed(i64 %15, i64 %18)
  %20 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %4, align 8
  %21 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %4, align 8
  %27 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @writel_relaxed(i64 %25, i64 %28)
  br label %30

30:                                               ; preds = %24, %1
  ret void
}

declare dso_local %struct.s3c_irq_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
