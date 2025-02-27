; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_fault.c_hfi1_dbg_should_fault_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_fault.c_hfi1_dbg_should_fault_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hfi1_ibdev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@HFI1_FAULT_DIR_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_dbg_should_fault_tx(%struct.rvt_qp* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvt_qp*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hfi1_ibdev*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %8 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.hfi1_ibdev* @to_idev(i32 %10)
  store %struct.hfi1_ibdev* %11, %struct.hfi1_ibdev** %6, align 8
  %12 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i32, i32* @HFI1_FAULT_DIR_TX, align 4
  %15 = call i64 @__hfi1_should_fault(%struct.hfi1_ibdev* %12, i64 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @trace_hfi1_fault_opcode(%struct.rvt_qp* %18, i64 %19)
  %21 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %6, align 8
  %22 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  store i32 1, i32* %3, align 4
  br label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %17
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.hfi1_ibdev* @to_idev(i32) #1

declare dso_local i64 @__hfi1_should_fault(%struct.hfi1_ibdev*, i64, i32) #1

declare dso_local i32 @trace_hfi1_fault_opcode(%struct.rvt_qp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
