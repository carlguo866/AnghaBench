; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_snoc = type { %struct.ath10k_qmi* }
%struct.ath10k_qmi = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_qmi_deinit(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca %struct.ath10k_snoc*, align 8
  %4 = alloca %struct.ath10k_qmi*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %5 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %6 = call %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k* %5)
  store %struct.ath10k_snoc* %6, %struct.ath10k_snoc** %3, align 8
  %7 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %3, align 8
  %8 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %7, i32 0, i32 0
  %9 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %8, align 8
  store %struct.ath10k_qmi* %9, %struct.ath10k_qmi** %4, align 8
  %10 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %4, align 8
  %11 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %10, i32 0, i32 2
  %12 = call i32 @qmi_handle_release(i32* %11)
  %13 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %4, align 8
  %14 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %13, i32 0, i32 1
  %15 = call i32 @cancel_work_sync(i32* %14)
  %16 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %4, align 8
  %17 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @destroy_workqueue(i32 %18)
  %20 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %4, align 8
  %21 = call i32 @kfree(%struct.ath10k_qmi* %20)
  %22 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %3, align 8
  %23 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %22, i32 0, i32 0
  store %struct.ath10k_qmi* null, %struct.ath10k_qmi** %23, align 8
  ret i32 0
}

declare dso_local %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k*) #1

declare dso_local i32 @qmi_handle_release(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kfree(%struct.ath10k_qmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
