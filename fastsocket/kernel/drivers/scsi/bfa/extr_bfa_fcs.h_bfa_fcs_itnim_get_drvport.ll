; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.h_bfa_fcs_itnim_get_drvport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.h_bfa_fcs_itnim_get_drvport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_port_s = type { i32 }
%struct.bfa_fcs_itnim_s = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.bfad_port_s* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfad_port_s* (%struct.bfa_fcs_itnim_s*)* @bfa_fcs_itnim_get_drvport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfad_port_s* @bfa_fcs_itnim_get_drvport(%struct.bfa_fcs_itnim_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_itnim_s*, align 8
  store %struct.bfa_fcs_itnim_s* %0, %struct.bfa_fcs_itnim_s** %2, align 8
  %3 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %2, align 8
  %4 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.bfad_port_s*, %struct.bfad_port_s** %8, align 8
  ret %struct.bfad_port_s* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
