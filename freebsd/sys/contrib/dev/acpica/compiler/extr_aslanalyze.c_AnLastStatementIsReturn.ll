; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslanalyze.c_AnLastStatementIsReturn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslanalyze.c_AnLastStatementIsReturn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

@PARSEOP_RETURN = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AnLastStatementIsReturn(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = call %struct.TYPE_9__* @ASL_GET_CHILD_NODE(%struct.TYPE_9__* %5)
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %4, align 8
  br label %7

7:                                                ; preds = %25, %1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PARSEOP_RETURN, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %2, align 4
  br label %30

25:                                               ; preds = %16, %10
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = call %struct.TYPE_9__* @ASL_GET_PEER_NODE(%struct.TYPE_9__* %26)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %4, align 8
  br label %7

28:                                               ; preds = %7
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.TYPE_9__* @ASL_GET_CHILD_NODE(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @ASL_GET_PEER_NODE(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
