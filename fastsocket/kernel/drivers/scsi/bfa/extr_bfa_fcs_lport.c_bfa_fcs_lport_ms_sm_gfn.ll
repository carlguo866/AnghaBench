; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ms_sm_gfn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ms_sm_gfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_ms_s = type { %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@BFA_FCS_MS_CMD_MAX_RETRIES = common dso_local global i32 0, align 4
@bfa_fcs_lport_ms_sm_gfn_retry = common dso_local global i32 0, align 4
@bfa_fcs_lport_ms_timeout = common dso_local global i32 0, align 4
@BFA_FCS_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@bfa_fcs_lport_ms_sm_online = common dso_local global i32 0, align 4
@bfa_fcs_lport_ms_sm_offline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_lport_ms_s*, i32)* @bfa_fcs_lport_ms_sm_gfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_ms_sm_gfn(%struct.bfa_fcs_lport_ms_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_lport_ms_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_lport_ms_s* %0, %struct.bfa_fcs_lport_ms_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %11 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bfa_trc(i32 %9, i32 %15)
  %17 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @bfa_trc(i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %72 [
    i32 129, label %25
    i32 128, label %60
    i32 130, label %64
  ]

25:                                               ; preds = %2
  %26 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @BFA_FCS_MS_CMD_MAX_RETRIES, align 4
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %25
  %33 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %34 = load i32, i32* @bfa_fcs_lport_ms_sm_gfn_retry, align 4
  %35 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ms_s* %33, i32 %34)
  %36 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %44 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = call i32 @BFA_FCS_GET_HAL_FROM_PORT(%struct.TYPE_6__* %45)
  %47 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %48 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %47, i32 0, i32 3
  %49 = load i32, i32* @bfa_fcs_lport_ms_timeout, align 4
  %50 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %51 = load i32, i32* @BFA_FCS_RETRY_TIMEOUT, align 4
  %52 = call i32 @bfa_timer_start(i32 %46, i32* %48, i32 %49, %struct.bfa_fcs_lport_ms_s* %50, i32 %51)
  br label %59

53:                                               ; preds = %25
  %54 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %55 = load i32, i32* @bfa_fcs_lport_ms_sm_online, align 4
  %56 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ms_s* %54, i32 %55)
  %57 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %58 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %57, i32 0, i32 2
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %53, %32
  br label %80

60:                                               ; preds = %2
  %61 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %62 = load i32, i32* @bfa_fcs_lport_ms_sm_online, align 4
  %63 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ms_s* %61, i32 %62)
  br label %80

64:                                               ; preds = %2
  %65 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %66 = load i32, i32* @bfa_fcs_lport_ms_sm_offline, align 4
  %67 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ms_s* %65, i32 %66)
  %68 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %69 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @bfa_fcxp_discard(i32 %70)
  br label %80

72:                                               ; preds = %2
  %73 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %74 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @bfa_sm_fault(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %72, %64, %60, %59
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ms_s*, i32) #1

declare dso_local i32 @bfa_timer_start(i32, i32*, i32, %struct.bfa_fcs_lport_ms_s*, i32) #1

declare dso_local i32 @BFA_FCS_GET_HAL_FROM_PORT(%struct.TYPE_6__*) #1

declare dso_local i32 @bfa_fcxp_discard(i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
