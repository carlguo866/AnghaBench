; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_sli3_dequeue_nport_iocbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_sli3_dequeue_nport_iocbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.lpfc_sli }
%struct.lpfc_sli = type { i64, i32* }
%struct.lpfc_nodelist = type { i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_nodelist*, %struct.list_head*)* @lpfc_sli3_dequeue_nport_iocbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli3_dequeue_nport_iocbs(%struct.lpfc_hba* %0, %struct.lpfc_nodelist* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_nodelist*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.lpfc_sli*, align 8
  %8 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 1
  store %struct.lpfc_sli* %10, %struct.lpfc_sli** %7, align 8
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_irq(i32* %12)
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %30, %3
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.lpfc_sli*, %struct.lpfc_sli** %7, align 8
  %17 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %22 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %23 = load %struct.lpfc_sli*, %struct.lpfc_sli** %7, align 8
  %24 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load %struct.list_head*, %struct.list_head** %6, align 8
  %29 = call i32 @__lpfc_dequeue_nport_iocbs(%struct.lpfc_hba* %21, %struct.lpfc_nodelist* %22, i32* %27, %struct.list_head* %28)
  br label %30

30:                                               ; preds = %20
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %8, align 8
  br label %14

33:                                               ; preds = %14
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock_irq(i32* %35)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @__lpfc_dequeue_nport_iocbs(%struct.lpfc_hba*, %struct.lpfc_nodelist*, i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
