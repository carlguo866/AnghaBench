; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_delvport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_delvport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_fabric_s = type { i32, i32 }
%struct.bfa_fcs_vport_s = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_fabric_delvport(%struct.bfa_fcs_fabric_s* %0, %struct.bfa_fcs_vport_s* %1) #0 {
  %3 = alloca %struct.bfa_fcs_fabric_s*, align 8
  %4 = alloca %struct.bfa_fcs_vport_s*, align 8
  store %struct.bfa_fcs_fabric_s* %0, %struct.bfa_fcs_fabric_s** %3, align 8
  store %struct.bfa_fcs_vport_s* %1, %struct.bfa_fcs_vport_s** %4, align 8
  %5 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %4, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %5, i32 0, i32 0
  %7 = call i32 @list_del(i32* %6)
  %8 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %12, i32 0, i32 0
  %14 = call i32 @bfa_wc_down(i32* %13)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @bfa_wc_down(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
