; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_vfe_patch_event.c_adsp_vfe_patch_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_vfe_patch_event.c_adsp_vfe_patch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_adsp_module = type { i32 }
%struct.adsp_event = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adsp_vfe_patch_event(%struct.msm_adsp_module* %0, %struct.adsp_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_adsp_module*, align 8
  %5 = alloca %struct.adsp_event*, align 8
  store %struct.msm_adsp_module* %0, %struct.msm_adsp_module** %4, align 8
  store %struct.adsp_event* %1, %struct.adsp_event** %5, align 8
  %6 = load %struct.adsp_event*, %struct.adsp_event** %5, align 8
  %7 = getelementptr inbounds %struct.adsp_event, %struct.adsp_event* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %17 [
    i32 131, label %9
    i32 130, label %9
    i32 129, label %13
    i32 128, label %13
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %4, align 8
  %11 = load %struct.adsp_event*, %struct.adsp_event** %5, align 8
  %12 = call i32 @patch_op_event(%struct.msm_adsp_module* %10, %struct.adsp_event* %11)
  store i32 %12, i32* %3, align 4
  br label %19

13:                                               ; preds = %2, %2
  %14 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %4, align 8
  %15 = load %struct.adsp_event*, %struct.adsp_event** %5, align 8
  %16 = call i32 @patch_af_wb_event(%struct.msm_adsp_module* %14, %struct.adsp_event* %15)
  store i32 %16, i32* %3, align 4
  br label %19

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %13, %9
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @patch_op_event(%struct.msm_adsp_module*, %struct.adsp_event*) #1

declare dso_local i32 @patch_af_wb_event(%struct.msm_adsp_module*, %struct.adsp_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
