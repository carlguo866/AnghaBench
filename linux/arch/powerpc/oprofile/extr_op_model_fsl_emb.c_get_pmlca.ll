; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_fsl_emb.c_get_pmlca.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_fsl_emb.c_get_pmlca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PMRN_PMLCA0 = common dso_local global i32 0, align 4
@PMRN_PMLCA1 = common dso_local global i32 0, align 4
@PMRN_PMLCA2 = common dso_local global i32 0, align 4
@PMRN_PMLCA3 = common dso_local global i32 0, align 4
@PMRN_PMLCA4 = common dso_local global i32 0, align 4
@PMRN_PMLCA5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Bad ctr number\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_pmlca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pmlca(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %23 [
    i32 0, label %5
    i32 1, label %8
    i32 2, label %11
    i32 3, label %14
    i32 4, label %17
    i32 5, label %20
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @PMRN_PMLCA0, align 4
  %7 = call i32 @mfpmr(i32 %6)
  store i32 %7, i32* %3, align 4
  br label %25

8:                                                ; preds = %1
  %9 = load i32, i32* @PMRN_PMLCA1, align 4
  %10 = call i32 @mfpmr(i32 %9)
  store i32 %10, i32* %3, align 4
  br label %25

11:                                               ; preds = %1
  %12 = load i32, i32* @PMRN_PMLCA2, align 4
  %13 = call i32 @mfpmr(i32 %12)
  store i32 %13, i32* %3, align 4
  br label %25

14:                                               ; preds = %1
  %15 = load i32, i32* @PMRN_PMLCA3, align 4
  %16 = call i32 @mfpmr(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %25

17:                                               ; preds = %1
  %18 = load i32, i32* @PMRN_PMLCA4, align 4
  %19 = call i32 @mfpmr(i32 %18)
  store i32 %19, i32* %3, align 4
  br label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @PMRN_PMLCA5, align 4
  %22 = call i32 @mfpmr(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %25

23:                                               ; preds = %1
  %24 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20, %17, %14, %11, %8, %5
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @mfpmr(i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
