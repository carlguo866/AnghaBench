; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ns_sm_gid_ft.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ns_sm_gid_ft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_ns_s = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@bfa_fcs_lport_ns_sm_online = common dso_local global i32 0, align 4
@bfa_fcs_lport_ns_sm_gid_ft_retry = common dso_local global i32 0, align 4
@bfa_fcs_lport_ns_timeout = common dso_local global i32 0, align 4
@BFA_FCS_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@bfa_fcs_lport_ns_sm_offline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_lport_ns_s*, i32)* @bfa_fcs_lport_ns_sm_gid_ft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_ns_sm_gid_ft(%struct.bfa_fcs_lport_ns_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_lport_ns_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_lport_ns_s* %0, %struct.bfa_fcs_lport_ns_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %11 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bfa_trc(i32 %9, i32 %15)
  %17 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @bfa_trc(i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %59 [
    i32 128, label %25
    i32 129, label %29
    i32 130, label %50
    i32 131, label %58
  ]

25:                                               ; preds = %2
  %26 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %27 = load i32, i32* @bfa_fcs_lport_ns_sm_online, align 4
  %28 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ns_s* %26, i32 %27)
  br label %67

29:                                               ; preds = %2
  %30 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %31 = load i32, i32* @bfa_fcs_lport_ns_sm_gid_ft_retry, align 4
  %32 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ns_s* %30, i32 %31)
  %33 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %34 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = call i32 @BFA_FCS_GET_HAL_FROM_PORT(%struct.TYPE_6__* %42)
  %44 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %45 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %44, i32 0, i32 2
  %46 = load i32, i32* @bfa_fcs_lport_ns_timeout, align 4
  %47 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %48 = load i32, i32* @BFA_FCS_RETRY_TIMEOUT, align 4
  %49 = call i32 @bfa_timer_start(i32 %43, i32* %45, i32 %46, %struct.bfa_fcs_lport_ns_s* %47, i32 %48)
  br label %67

50:                                               ; preds = %2
  %51 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %52 = load i32, i32* @bfa_fcs_lport_ns_sm_offline, align 4
  %53 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ns_s* %51, i32 %52)
  %54 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %55 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @bfa_fcxp_discard(i32 %56)
  br label %67

58:                                               ; preds = %2
  br label %67

59:                                               ; preds = %2
  %60 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %61 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @bfa_sm_fault(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %59, %58, %50, %29, %25
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ns_s*, i32) #1

declare dso_local i32 @bfa_timer_start(i32, i32*, i32, %struct.bfa_fcs_lport_ns_s*, i32) #1

declare dso_local i32 @BFA_FCS_GET_HAL_FROM_PORT(%struct.TYPE_6__*) #1

declare dso_local i32 @bfa_fcxp_discard(i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
