; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu.c_cpu_start.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu.c_cpu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"cpu: cpu_start(%d) returning failure!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cpu_start(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 (...) @cpu_number()
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = call i32 (...) @cpu_machine_init()
  %10 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %10, i64* %2, align 8
  br label %29

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @intel_startCPU_fast(i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @KERN_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @intel_startCPU(i32 %18)
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %17, %11
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @KERN_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @kprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i64, i64* %4, align 8
  store i64 %28, i64* %2, align 8
  br label %29

29:                                               ; preds = %27, %8
  %30 = load i64, i64* %2, align 8
  ret i64 %30
}

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @cpu_machine_init(...) #1

declare dso_local i64 @intel_startCPU_fast(i32) #1

declare dso_local i64 @intel_startCPU(i32) #1

declare dso_local i32 @kprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
