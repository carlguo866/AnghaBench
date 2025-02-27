; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_hw_sem_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_hw_sem_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IOCPF_E_SEM_ERROR = common dso_local global i32 0, align 4
@IOCPF_E_SEMLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc_s*)* @bfa_ioc_hw_sem_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_hw_sem_get(%struct.bfa_ioc_s* %0) #0 {
  %2 = alloca %struct.bfa_ioc_s*, align 8
  %3 = alloca i32, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %2, align 8
  %4 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @readl(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, -1
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %17 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %16, i32 0, i32 0
  %18 = load i32, i32* @IOCPF_E_SEM_ERROR, align 4
  %19 = call i32 @bfa_fsm_send_event(i32* %17, i32 %18)
  br label %32

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %26 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %25, i32 0, i32 0
  %27 = load i32, i32* @IOCPF_E_SEMLOCKED, align 4
  %28 = call i32 @bfa_fsm_send_event(i32* %26, i32 %27)
  br label %32

29:                                               ; preds = %20
  %30 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %31 = call i32 @bfa_sem_timer_start(%struct.bfa_ioc_s* %30)
  br label %32

32:                                               ; preds = %29, %24, %11
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_fsm_send_event(i32*, i32) #1

declare dso_local i32 @bfa_sem_timer_start(%struct.bfa_ioc_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
