; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.h_sym_get_hcb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.h_sym_get_hcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.sym_data = type { %struct.sym_hcb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sym_hcb* (%struct.Scsi_Host*)* @sym_get_hcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sym_hcb* @sym_get_hcb(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %3 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %4 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to %struct.sym_data*
  %7 = getelementptr inbounds %struct.sym_data, %struct.sym_data* %6, i32 0, i32 0
  %8 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  ret %struct.sym_hcb* %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
