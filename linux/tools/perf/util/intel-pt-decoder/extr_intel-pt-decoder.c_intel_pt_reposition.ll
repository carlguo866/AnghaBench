; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_reposition.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_reposition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i64, i32, i64 }

@INTEL_PT_STATE_NO_PSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_pt_decoder*)* @intel_pt_reposition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_reposition(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca %struct.intel_pt_decoder*, align 8
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %2, align 8
  %3 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %4 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %3, i32 0, i32 3
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* @INTEL_PT_STATE_NO_PSB, align 4
  %6 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %7 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 8
  %8 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %9 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %11 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
