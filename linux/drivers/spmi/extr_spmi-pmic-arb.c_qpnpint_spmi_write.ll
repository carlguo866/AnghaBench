; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_qpnpint_spmi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_qpnpint_spmi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32, i32 }
%struct.spmi_pmic_arb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SPMI_CMD_EXT_WRITEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed irqchip transaction on %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, i32, i8*, i64)* @qpnpint_spmi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qpnpint_spmi_write(%struct.irq_data* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.spmi_pmic_arb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %13 = call %struct.spmi_pmic_arb* @irq_data_get_irq_chip_data(%struct.irq_data* %12)
  store %struct.spmi_pmic_arb* %13, %struct.spmi_pmic_arb** %9, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @hwirq_to_sid(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @hwirq_to_per(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %9, align 8
  %23 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* @SPMI_CMD_EXT_WRITEL, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = shl i32 %27, 8
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @pmic_arb_write_cmd(%struct.TYPE_2__* %24, i32 %25, i32 %26, i32 %30, i8* %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %4
  %36 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %9, align 8
  %37 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %41 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err_ratelimited(i32* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %35, %4
  ret void
}

declare dso_local %struct.spmi_pmic_arb* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @hwirq_to_sid(i32) #1

declare dso_local i32 @hwirq_to_per(i32) #1

declare dso_local i64 @pmic_arb_write_cmd(%struct.TYPE_2__*, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @dev_err_ratelimited(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
