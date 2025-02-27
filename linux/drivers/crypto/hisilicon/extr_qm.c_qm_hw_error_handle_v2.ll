; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_hw_error_handle_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_hw_error_handle_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qm = type { i32, i64 }

@QM_ABNORMAL_INT_STATUS = common dso_local global i64 0, align 8
@QM_ABNORMAL_INT_SOURCE = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_qm*)* @qm_hw_error_handle_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_hw_error_handle_v2(%struct.hisi_qm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_qm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hisi_qm* %0, %struct.hisi_qm** %3, align 8
  %6 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %7 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @QM_ABNORMAL_INT_STATUS, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %13 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @qm_log_hw_error(%struct.hisi_qm* %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %25 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @QM_ABNORMAL_INT_SOURCE, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  %30 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %19
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @qm_log_hw_error(%struct.hisi_qm*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
