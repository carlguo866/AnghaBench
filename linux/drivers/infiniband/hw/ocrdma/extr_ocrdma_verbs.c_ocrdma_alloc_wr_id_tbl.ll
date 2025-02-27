; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_alloc_wr_id_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_alloc_wr_id_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i32*, %struct.TYPE_4__, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_qp*)* @ocrdma_alloc_wr_id_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_alloc_wr_id_tbl(%struct.ocrdma_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocrdma_qp*, align 8
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %3, align 8
  %4 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %5 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kcalloc(i32 %7, i32 4, i32 %8)
  %10 = bitcast i8* %9 to i32*
  %11 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %12 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %11, i32 0, i32 2
  store i32* %10, i32** %12, align 8
  %13 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %14 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %38

20:                                               ; preds = %1
  %21 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %22 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kcalloc(i32 %24, i32 4, i32 %25)
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %29 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %31 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %20
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %34, %17
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
