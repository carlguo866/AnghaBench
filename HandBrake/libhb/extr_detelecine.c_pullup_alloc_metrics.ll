; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_alloc_metrics.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_alloc_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pullup_context = type { i32 }
%struct.pullup_field = type { i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pullup_context*, %struct.pullup_field*)* @pullup_alloc_metrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pullup_alloc_metrics(%struct.pullup_context* %0, %struct.pullup_field* %1) #0 {
  %3 = alloca %struct.pullup_context*, align 8
  %4 = alloca %struct.pullup_field*, align 8
  store %struct.pullup_context* %0, %struct.pullup_context** %3, align 8
  store %struct.pullup_field* %1, %struct.pullup_field** %4, align 8
  %5 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %6 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @calloc(i32 %7, i32 4)
  %9 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %10 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %12 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @calloc(i32 %13, i32 4)
  %15 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %16 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %18 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @calloc(i32 %19, i32 4)
  %21 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %22 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  ret void
}

declare dso_local i8* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
