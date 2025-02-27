; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c___lpfc_sli_rpi_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c___lpfc_sli_rpi_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32 }

@NLP_RELEASE_RPI = common dso_local global i32 0, align 4
@LPFC_RPI_ALLOC_ERROR = common dso_local global i32 0, align 4
@NLP_UNREG_INP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*, %struct.lpfc_nodelist*)* @__lpfc_sli_rpi_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lpfc_sli_rpi_release(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1) #0 {
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_nodelist*, align 8
  %5 = alloca i64, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %4, align 8
  %6 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %7 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NLP_RELEASE_RPI, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %14 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %17 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @lpfc_sli4_free_rpi(%struct.TYPE_2__* %15, i32 %18)
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %21 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load i32, i32* @NLP_RELEASE_RPI, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %29 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @LPFC_RPI_ALLOC_ERROR, align 4
  %33 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %34 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %36 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  br label %41

41:                                               ; preds = %12, %2
  %42 = load i32, i32* @NLP_UNREG_INP, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %45 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  ret void
}

declare dso_local i32 @lpfc_sli4_free_rpi(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
