; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_def.h_qlnxr_qp_has_sq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_def.h_qlnxr_qp_has_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_qp = type { i64 }

@IB_QPT_GSI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_qp*)* @qlnxr_qp_has_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_qp_has_sq(%struct.qlnxr_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlnxr_qp*, align 8
  store %struct.qlnxr_qp* %0, %struct.qlnxr_qp** %3, align 8
  %4 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %3, align 8
  %5 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @IB_QPT_GSI, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %11

11:                                               ; preds = %10, %9
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
