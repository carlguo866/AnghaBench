; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_port = type { i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.bstp_port* }

@.str = private unnamed_addr constant [23 x i8] c"port is still attached\00", align 1
@taskqueue_swi = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bstp_destroy(%struct.bstp_port* %0) #0 {
  %2 = alloca %struct.bstp_port*, align 8
  store %struct.bstp_port* %0, %struct.bstp_port** %2, align 8
  %3 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %4 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @taskqueue_swi, align 4
  %10 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %11 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %10, i32 0, i32 4
  %12 = call i32 @taskqueue_drain(i32 %9, i32* %11)
  %13 = load i32, i32* @taskqueue_swi, align 4
  %14 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %15 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %14, i32 0, i32 3
  %16 = call i32 @taskqueue_drain(i32 %13, i32* %15)
  %17 = load i32, i32* @taskqueue_swi, align 4
  %18 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %19 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %18, i32 0, i32 2
  %20 = call i32 @taskqueue_drain(i32 %17, i32* %19)
  %21 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %22 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.bstp_port*, %struct.bstp_port** %24, align 8
  %26 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %27 = icmp eq %struct.bstp_port* %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %30 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = call i32 @bstp_assign_roles(%struct.TYPE_2__* %31)
  br label %33

33:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @bstp_assign_roles(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
