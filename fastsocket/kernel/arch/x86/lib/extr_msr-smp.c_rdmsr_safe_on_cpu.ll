; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/lib/extr_msr-smp.c_rdmsr_safe_on_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/lib/extr_msr-smp.c_rdmsr_safe_on_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msr_info = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@__rdmsr_safe_on_cpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdmsr_safe_on_cpu(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.msr_info, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = call i32 @memset(%struct.msr_info* %10, i32 0, i32 16)
  %12 = load i32, i32* %6, align 4
  %13 = getelementptr inbounds %struct.msr_info, %struct.msr_info* %10, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @__rdmsr_safe_on_cpu, align 4
  %16 = call i32 @smp_call_function_single(i32 %14, i32 %15, %struct.msr_info* %10, i32 1)
  store i32 %16, i32* %9, align 4
  %17 = getelementptr inbounds %struct.msr_info, %struct.msr_info* %10, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.msr_info, %struct.msr_info* %10, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  br label %32

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.msr_info, %struct.msr_info* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi i32 [ %28, %27 ], [ %31, %29 ]
  ret i32 %33
}

declare dso_local i32 @memset(%struct.msr_info*, i32, i32) #1

declare dso_local i32 @smp_call_function_single(i32, i32, %struct.msr_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
