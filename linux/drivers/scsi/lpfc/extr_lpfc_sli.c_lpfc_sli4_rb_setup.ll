; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_rb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_rb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.lpfc_hba = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@lpfc_hbq_defs = common dso_local global %struct.TYPE_4__** null, align 8
@LPFC_ELS_HBQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_sli4_rb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_rb_setup(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %3 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %4 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %3, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @lpfc_hbq_defs, align 8
  %6 = load i64, i64* @LPFC_ELS_HBQ, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %5, i64 %6
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i64, i64* @LPFC_ELS_HBQ, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %10, i32* %16, align 4
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %20 = load i64, i64* @LPFC_ELS_HBQ, align 8
  %21 = call i32 @lpfc_sli_hbqbuf_init_hbqs(%struct.lpfc_hba* %19, i64 %20)
  ret i32 0
}

declare dso_local i32 @lpfc_sli_hbqbuf_init_hbqs(%struct.lpfc_hba*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
