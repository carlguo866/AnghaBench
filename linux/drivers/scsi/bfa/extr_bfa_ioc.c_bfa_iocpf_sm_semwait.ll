; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_iocpf_sm_semwait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_iocpf_sm_semwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocpf_s = type { %struct.bfa_ioc_s* }
%struct.bfa_ioc_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@bfa_iocpf_sm_hwinit = common dso_local global i32 0, align 4
@bfa_iocpf_sm_fail = common dso_local global i32 0, align 4
@IOC_E_HWFAILED = common dso_local global i32 0, align 4
@bfa_iocpf_sm_disabling_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocpf_s*, i32)* @bfa_iocpf_sm_semwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocpf_sm_semwait(%struct.bfa_iocpf_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_iocpf_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_ioc_s*, align 8
  store %struct.bfa_iocpf_s* %0, %struct.bfa_iocpf_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %6, i32 0, i32 0
  %8 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %7, align 8
  store %struct.bfa_ioc_s* %8, %struct.bfa_ioc_s** %5, align 8
  %9 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @bfa_trc(%struct.bfa_ioc_s* %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %45 [
    i32 129, label %13
    i32 128, label %32
    i32 130, label %39
  ]

13:                                               ; preds = %2
  %14 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %15 = call i32 @bfa_ioc_sync_complete(%struct.bfa_ioc_s* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %19 = call i32 @bfa_ioc_sync_join(%struct.bfa_ioc_s* %18)
  %20 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %21 = load i32, i32* @bfa_iocpf_sm_hwinit, align 4
  %22 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s* %20, i32 %21)
  br label %31

23:                                               ; preds = %13
  %24 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %25 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @writel(i32 1, i32 %27)
  %29 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %30 = call i32 @bfa_sem_timer_start(%struct.bfa_ioc_s* %29)
  br label %31

31:                                               ; preds = %23, %17
  br label %49

32:                                               ; preds = %2
  %33 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %34 = load i32, i32* @bfa_iocpf_sm_fail, align 4
  %35 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s* %33, i32 %34)
  %36 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %37 = load i32, i32* @IOC_E_HWFAILED, align 4
  %38 = call i32 @bfa_fsm_send_event(%struct.bfa_ioc_s* %36, i32 %37)
  br label %49

39:                                               ; preds = %2
  %40 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %41 = call i32 @bfa_sem_timer_stop(%struct.bfa_ioc_s* %40)
  %42 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %43 = load i32, i32* @bfa_iocpf_sm_disabling_sync, align 4
  %44 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s* %42, i32 %43)
  br label %49

45:                                               ; preds = %2
  %46 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @bfa_sm_fault(%struct.bfa_ioc_s* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %39, %32, %31
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_ioc_sync_complete(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_ioc_sync_join(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_sem_timer_start(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_sem_timer_stop(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.bfa_ioc_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
