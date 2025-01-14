; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_process.c_dump_fpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_process.c_dump_fpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.user_fp = type { i32 }
%struct.thread_info = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dump_fpu(%struct.pt_regs* %0, %struct.user_fp* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.user_fp*, align 8
  %5 = alloca %struct.thread_info*, align 8
  %6 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store %struct.user_fp* %1, %struct.user_fp** %4, align 8
  %7 = call %struct.thread_info* (...) @current_thread_info()
  store %struct.thread_info* %7, %struct.thread_info** %5, align 8
  %8 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %9 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %14 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %12, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.user_fp*, %struct.user_fp** %4, align 8
  %23 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %24 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @memcpy(%struct.user_fp* %22, i32* %25, i32 4)
  br label %27

27:                                               ; preds = %21, %2
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local %struct.thread_info* @current_thread_info(...) #1

declare dso_local i32 @memcpy(%struct.user_fp*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
