; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_stop_fcf_redisc_wait_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_stop_fcf_redisc_wait_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FCF_REDISC_PEND = common dso_local global i32 0, align 4
@FCF_DEAD_DISC = common dso_local global i32 0, align 4
@FCF_ACVL_DISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli4_stop_fcf_redisc_wait_timer(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %3 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %4 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %3, i32 0, i32 0
  %5 = call i32 @spin_lock_irq(i32* %4)
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FCF_REDISC_PEND, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock_irq(i32* %15)
  br label %32

17:                                               ; preds = %1
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %19 = call i32 @__lpfc_sli4_stop_fcf_redisc_wait_timer(%struct.lpfc_hba* %18)
  %20 = load i32, i32* @FCF_DEAD_DISC, align 4
  %21 = load i32, i32* @FCF_ACVL_DISC, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %23
  store i32 %28, i32* %26, align 4
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_irq(i32* %30)
  br label %32

32:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @__lpfc_sli4_stop_fcf_redisc_wait_timer(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
