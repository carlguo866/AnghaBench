; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_mmiotrace.c_mmio_close.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_mmiotrace.c_mmio_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { %struct.header_iter* }
%struct.header_iter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_iterator*)* @mmio_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmio_close(%struct.trace_iterator* %0) #0 {
  %2 = alloca %struct.trace_iterator*, align 8
  %3 = alloca %struct.header_iter*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %2, align 8
  %4 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %5 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %4, i32 0, i32 0
  %6 = load %struct.header_iter*, %struct.header_iter** %5, align 8
  store %struct.header_iter* %6, %struct.header_iter** %3, align 8
  %7 = load %struct.header_iter*, %struct.header_iter** %3, align 8
  %8 = call i32 @destroy_header_iter(%struct.header_iter* %7)
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %9, i32 0, i32 0
  store %struct.header_iter* null, %struct.header_iter** %10, align 8
  ret void
}

declare dso_local i32 @destroy_header_iter(%struct.header_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
