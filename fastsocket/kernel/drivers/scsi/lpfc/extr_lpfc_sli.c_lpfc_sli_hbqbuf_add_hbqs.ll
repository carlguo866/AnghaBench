; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_hbqbuf_add_hbqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_hbqbuf_add_hbqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.lpfc_hba = type { i64 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@lpfc_hbq_defs = common dso_local global %struct.TYPE_2__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_hbqbuf_add_hbqs(%struct.lpfc_hba* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LPFC_SLI_REV4, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

12:                                               ; preds = %2
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @lpfc_hbq_defs, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @lpfc_sli_hbqbuf_fill_hbqs(%struct.lpfc_hba* %13, i64 %14, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %12, %11
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @lpfc_sli_hbqbuf_fill_hbqs(%struct.lpfc_hba*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
