; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_ecm.c_ecm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_ecm.c_ecm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@PT_PASSED = common dso_local global i32 0, align 4
@EC0_OUT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecm_init(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %3 = load i32, i32* @PT_PASSED, align 4
  %4 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %5 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i32 %3, i32* %6, align 8
  %7 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %8 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %11 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @EC0_OUT, align 4
  %14 = call i32 @ACTIONS(i32 %13)
  %15 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %16 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load i32, i32* @FALSE, align 4
  %19 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %20 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  ret void
}

declare dso_local i32 @ACTIONS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
