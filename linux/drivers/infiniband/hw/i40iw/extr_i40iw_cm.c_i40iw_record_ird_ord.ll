; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_record_ird_ord.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_record_ird_ord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { i64, i64, i64 }

@I40IW_MAX_IRD_SIZE = common dso_local global i64 0, align 8
@I40IW_MAX_ORD_SIZE = common dso_local global i64 0, align 8
@SEND_RDMA_READ_ZERO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_cm_node*, i64, i64)* @i40iw_record_ird_ord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_record_ird_ord(%struct.i40iw_cm_node* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.i40iw_cm_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @I40IW_MAX_IRD_SIZE, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i64, i64* @I40IW_MAX_IRD_SIZE, align 8
  store i64 %11, i64* %5, align 8
  br label %12

12:                                               ; preds = %10, %3
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @I40IW_MAX_ORD_SIZE, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i64, i64* @I40IW_MAX_ORD_SIZE, align 8
  store i64 %17, i64* %6, align 8
  br label %29

18:                                               ; preds = %12
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %23 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SEND_RDMA_READ_ZERO, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i64 1, i64* %6, align 8
  br label %28

28:                                               ; preds = %27, %21, %18
  br label %29

29:                                               ; preds = %28, %16
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %32 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %35 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
