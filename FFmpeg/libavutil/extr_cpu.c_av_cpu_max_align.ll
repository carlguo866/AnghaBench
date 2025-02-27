; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_cpu.c_av_cpu_max_align.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_cpu.c_av_cpu_max_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARCH_AARCH64 = common dso_local global i64 0, align 8
@ARCH_ARM = common dso_local global i64 0, align 8
@ARCH_PPC = common dso_local global i64 0, align 8
@ARCH_X86 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @av_cpu_max_align() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @ARCH_AARCH64, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i64 (...) @ff_get_cpu_max_align_aarch64()
  store i64 %5, i64* %1, align 8
  br label %22

6:                                                ; preds = %0
  %7 = load i64, i64* @ARCH_ARM, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i64 (...) @ff_get_cpu_max_align_arm()
  store i64 %10, i64* %1, align 8
  br label %22

11:                                               ; preds = %6
  %12 = load i64, i64* @ARCH_PPC, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i64 (...) @ff_get_cpu_max_align_ppc()
  store i64 %15, i64* %1, align 8
  br label %22

16:                                               ; preds = %11
  %17 = load i64, i64* @ARCH_X86, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i64 (...) @ff_get_cpu_max_align_x86()
  store i64 %20, i64* %1, align 8
  br label %22

21:                                               ; preds = %16
  store i64 8, i64* %1, align 8
  br label %22

22:                                               ; preds = %21, %19, %14, %9, %4
  %23 = load i64, i64* %1, align 8
  ret i64 %23
}

declare dso_local i64 @ff_get_cpu_max_align_aarch64(...) #1

declare dso_local i64 @ff_get_cpu_max_align_arm(...) #1

declare dso_local i64 @ff_get_cpu_max_align_ppc(...) #1

declare dso_local i64 @ff_get_cpu_max_align_x86(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
