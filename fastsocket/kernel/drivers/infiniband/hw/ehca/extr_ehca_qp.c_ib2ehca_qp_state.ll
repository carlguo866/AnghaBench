; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_qp.c_ib2ehca_qp_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_qp.c_ib2ehca_qp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EHCA_QPS_RESET = common dso_local global i32 0, align 4
@EHCA_QPS_INIT = common dso_local global i32 0, align 4
@EHCA_QPS_RTR = common dso_local global i32 0, align 4
@EHCA_QPS_RTS = common dso_local global i32 0, align 4
@EHCA_QPS_SQD = common dso_local global i32 0, align 4
@EHCA_QPS_SQE = common dso_local global i32 0, align 4
@EHCA_QPS_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid ib_qp_state=%x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ib2ehca_qp_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib2ehca_qp_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %19 [
    i32 132, label %5
    i32 133, label %7
    i32 131, label %9
    i32 130, label %11
    i32 129, label %13
    i32 128, label %15
    i32 134, label %17
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @EHCA_QPS_RESET, align 4
  store i32 %6, i32* %2, align 4
  br label %24

7:                                                ; preds = %1
  %8 = load i32, i32* @EHCA_QPS_INIT, align 4
  store i32 %8, i32* %2, align 4
  br label %24

9:                                                ; preds = %1
  %10 = load i32, i32* @EHCA_QPS_RTR, align 4
  store i32 %10, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load i32, i32* @EHCA_QPS_RTS, align 4
  store i32 %12, i32* %2, align 4
  br label %24

13:                                               ; preds = %1
  %14 = load i32, i32* @EHCA_QPS_SQD, align 4
  store i32 %14, i32* %2, align 4
  br label %24

15:                                               ; preds = %1
  %16 = load i32, i32* @EHCA_QPS_SQE, align 4
  store i32 %16, i32* %2, align 4
  br label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @EHCA_QPS_ERR, align 4
  store i32 %18, i32* %2, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %19, %17, %15, %13, %11, %9, %7, %5
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @ehca_gen_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
