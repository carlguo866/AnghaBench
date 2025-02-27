; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-fsl-emb.c_register_fsl_emb_pmu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-fsl-emb.c_register_fsl_emb_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_emb_pmu = type { i32 }

@ppmu = common dso_local global %struct.fsl_emb_pmu* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s performance monitor hardware support registered\0A\00", align 1
@fsl_emb_pmu = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@PERF_TYPE_RAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_fsl_emb_pmu(%struct.fsl_emb_pmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_emb_pmu*, align 8
  store %struct.fsl_emb_pmu* %0, %struct.fsl_emb_pmu** %3, align 8
  %4 = load %struct.fsl_emb_pmu*, %struct.fsl_emb_pmu** @ppmu, align 8
  %5 = icmp ne %struct.fsl_emb_pmu* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @EBUSY, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %17

9:                                                ; preds = %1
  %10 = load %struct.fsl_emb_pmu*, %struct.fsl_emb_pmu** %3, align 8
  store %struct.fsl_emb_pmu* %10, %struct.fsl_emb_pmu** @ppmu, align 8
  %11 = load %struct.fsl_emb_pmu*, %struct.fsl_emb_pmu** %3, align 8
  %12 = getelementptr inbounds %struct.fsl_emb_pmu, %struct.fsl_emb_pmu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @PERF_TYPE_RAW, align 4
  %16 = call i32 @perf_pmu_register(i32* @fsl_emb_pmu, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %9, %6
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @perf_pmu_register(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
