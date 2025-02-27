; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_srq_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_srq_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_srq = type { %struct.ib_srq }
%struct.ib_srq = type { i32, i32 (%struct.ib_event*, i32)*, i32, i32 }
%struct.ib_event = type opaque
%struct.ib_event.0 = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.ib_srq* }

@.str = private unnamed_addr constant [24 x i8] c"reporting SRQ event %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siw_srq_event(%struct.siw_srq* %0, i32 %1) #0 {
  %3 = alloca %struct.siw_srq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_event.0, align 8
  %6 = alloca %struct.ib_srq*, align 8
  store %struct.siw_srq* %0, %struct.siw_srq** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.siw_srq*, %struct.siw_srq** %3, align 8
  %8 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %7, i32 0, i32 0
  store %struct.ib_srq* %8, %struct.ib_srq** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %5, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %12 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %5, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %16 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %5, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.ib_srq* %15, %struct.ib_srq** %17, align 8
  %18 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %19 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %18, i32 0, i32 1
  %20 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.ib_event*, i32)* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load %struct.siw_srq*, %struct.siw_srq** %3, align 8
  %24 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @siw_dbg_pd(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %30 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %29, i32 0, i32 1
  %31 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %30, align 8
  %32 = bitcast %struct.ib_event.0* %5 to %struct.ib_event*
  %33 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %34 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %31(%struct.ib_event* %32, i32 %35)
  br label %37

37:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @siw_dbg_pd(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
