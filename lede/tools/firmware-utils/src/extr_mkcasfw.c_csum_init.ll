; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkcasfw.c_csum_init.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkcasfw.c_csum_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csum_state = type { i32, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csum_init(%struct.csum_state* %0, i32 %1) #0 {
  %3 = alloca %struct.csum_state*, align 8
  %4 = alloca i32, align 4
  store %struct.csum_state* %0, %struct.csum_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.csum_state*, %struct.csum_state** %3, align 8
  %6 = getelementptr inbounds %struct.csum_state, %struct.csum_state* %5, i32 0, i32 3
  store i64 0, i64* %6, align 8
  %7 = load %struct.csum_state*, %struct.csum_state** %3, align 8
  %8 = getelementptr inbounds %struct.csum_state, %struct.csum_state* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load %struct.csum_state*, %struct.csum_state** %3, align 8
  %10 = getelementptr inbounds %struct.csum_state, %struct.csum_state* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.csum_state*, %struct.csum_state** %3, align 8
  %13 = getelementptr inbounds %struct.csum_state, %struct.csum_state* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
