; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_set_admin_polling_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_set_admin_polling_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@ENA_REGS_ADMIN_INTR_MASK = common dso_local global i32 0, align 4
@ENA_REGS_INTR_MASK_OFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ena_com_set_admin_polling_mode(%struct.ena_com_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @ENA_REGS_ADMIN_INTR_MASK, align 4
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %13 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ENA_REGS_INTR_MASK_OFF, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %11, i64 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %20 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
