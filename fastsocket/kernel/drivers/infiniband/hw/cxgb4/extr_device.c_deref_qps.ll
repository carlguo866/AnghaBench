; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_device.c_deref_qps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_device.c_deref_qps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.qp_list = type { i32, %struct.TYPE_2__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_2__**)* @deref_qps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deref_qps(i32 %0, %struct.TYPE_2__** %1) #0 {
  %3 = alloca %struct.qp_list, align 8
  %4 = alloca i32, align 4
  %5 = bitcast %struct.qp_list* %3 to { i32, %struct.TYPE_2__** }*
  %6 = getelementptr inbounds { i32, %struct.TYPE_2__** }, { i32, %struct.TYPE_2__** }* %5, i32 0, i32 0
  store i32 %0, i32* %6, align 8
  %7 = getelementptr inbounds { i32, %struct.TYPE_2__** }, { i32, %struct.TYPE_2__** }* %5, i32 0, i32 1
  store %struct.TYPE_2__** %1, %struct.TYPE_2__*** %7, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %22, %2
  %9 = load i32, i32* %4, align 4
  %10 = getelementptr inbounds %struct.qp_list, %struct.qp_list* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.qp_list, %struct.qp_list* %3, i32 0, i32 1
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @c4iw_qp_rem_ref(i32* %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %8

25:                                               ; preds = %8
  ret void
}

declare dso_local i32 @c4iw_qp_rem_ref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
