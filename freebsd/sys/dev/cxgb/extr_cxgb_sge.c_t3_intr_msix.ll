; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_intr_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_intr_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_qset = type { %struct.sge_rspq, %struct.TYPE_2__* }
%struct.sge_rspq = type { i32 }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_intr_msix(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sge_qset*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sge_rspq*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.sge_qset*
  store %struct.sge_qset* %7, %struct.sge_qset** %3, align 8
  %8 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %9 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %14 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %13, i32 0, i32 0
  store %struct.sge_rspq* %14, %struct.sge_rspq** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %17 = call i64 @process_responses_gts(i32* %15, %struct.sge_rspq* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %21 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %19, %1
  ret void
}

declare dso_local i64 @process_responses_gts(i32*, %struct.sge_rspq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
