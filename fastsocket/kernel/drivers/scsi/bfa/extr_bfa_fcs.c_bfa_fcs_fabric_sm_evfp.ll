; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_sm_evfp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_sm_evfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_fabric_s = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@bfa_fcs_fabric_sm_evfp_done = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_isolated = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_fabric_s*, i32)* @bfa_fcs_fabric_sm_evfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_fabric_sm_evfp(%struct.bfa_fcs_fabric_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_fabric_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_fabric_s* %0, %struct.bfa_fcs_fabric_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bfa_trc(i32 %7, i32 %12)
  %14 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @bfa_trc(i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %28 [
    i32 129, label %20
    i32 128, label %24
  ]

20:                                               ; preds = %2
  %21 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %22 = load i32, i32* @bfa_fcs_fabric_sm_evfp_done, align 4
  %23 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %21, i32 %22)
  br label %34

24:                                               ; preds = %2
  %25 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %26 = load i32, i32* @bfa_fcs_fabric_sm_isolated, align 4
  %27 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %25, i32 %26)
  br label %34

28:                                               ; preds = %2
  %29 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @bfa_sm_fault(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %24, %20
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s*, i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
