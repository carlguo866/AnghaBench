; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_....utilannotate.h_annotated_source__histogram.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_....utilannotate.h_annotated_source__histogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hist = type opaque
%struct.annotated_source = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sym_hist* (%struct.annotated_source*, i32)* @annotated_source__histogram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sym_hist* @annotated_source__histogram(%struct.annotated_source* %0, i32 %1) #0 {
  %3 = alloca %struct.annotated_source*, align 8
  %4 = alloca i32, align 4
  store %struct.annotated_source* %0, %struct.annotated_source** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.annotated_source*, %struct.annotated_source** %3, align 8
  %6 = getelementptr inbounds %struct.annotated_source, %struct.annotated_source* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = load %struct.annotated_source*, %struct.annotated_source** %3, align 8
  %10 = getelementptr inbounds %struct.annotated_source, %struct.annotated_source* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr i8, i8* %8, i64 %14
  %16 = bitcast i8* %15 to %struct.sym_hist*
  ret %struct.sym_hist* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
