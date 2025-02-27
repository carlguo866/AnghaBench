; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_rdma_qp = type { i32 }
%struct.qed_hwfn = type { i32 }

@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"icid = %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"QP destroyed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.qed_rdma_qp*)* @qed_rdma_destroy_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_rdma_destroy_qp(i8* %0, %struct.qed_rdma_qp* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.qed_rdma_qp*, align 8
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.qed_rdma_qp* %1, %struct.qed_rdma_qp** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %8, %struct.qed_hwfn** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %10 = load i32, i32* @QED_MSG_RDMA, align 4
  %11 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %4, align 8
  %12 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %9, i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %16 = call i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %20 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %4, align 8
  %21 = call i32 @qed_iwarp_destroy_qp(%struct.qed_hwfn* %19, %struct.qed_rdma_qp* %20)
  store i32 %21, i32* %6, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %24 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %4, align 8
  %25 = call i32 @qed_roce_destroy_qp(%struct.qed_hwfn* %23, %struct.qed_rdma_qp* %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %4, align 8
  %28 = call i32 @kfree(%struct.qed_rdma_qp* %27)
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %30 = load i32, i32* @QED_MSG_RDMA, align 4
  %31 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %29, i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, ...) #1

declare dso_local i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_iwarp_destroy_qp(%struct.qed_hwfn*, %struct.qed_rdma_qp*) #1

declare dso_local i32 @qed_roce_destroy_qp(%struct.qed_hwfn*, %struct.qed_rdma_qp*) #1

declare dso_local i32 @kfree(%struct.qed_rdma_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
