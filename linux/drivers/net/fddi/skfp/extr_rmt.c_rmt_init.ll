; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_rmt.c_rmt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_rmt.c_rmt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64, i64, i64, i8*, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32 }

@RM0_ISOLATED = common dso_local global i32 0, align 4
@MAC0 = common dso_local global i64 0, align 8
@DA_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rmt_init(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %3 = load i32, i32* @RM0_ISOLATED, align 4
  %4 = call i32 @ACTIONS(i32 %3)
  %5 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %6 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = load i64, i64* @MAC0, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 %4, i32* %11, align 8
  %12 = load i32, i32* @DA_NONE, align 4
  %13 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %14 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 6
  store i32 %12, i32* %15, align 8
  %16 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %17 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = load i8*, i8** @FALSE, align 8
  %20 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %21 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i64, i64* @MAC0, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i8* %19, i8** %26, align 8
  %27 = load i8*, i8** @FALSE, align 8
  %28 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %29 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  store i8* %27, i8** %30, align 8
  %31 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %32 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %35 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %38 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @TRUE, align 4
  %41 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %42 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  ret void
}

declare dso_local i32 @ACTIONS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
