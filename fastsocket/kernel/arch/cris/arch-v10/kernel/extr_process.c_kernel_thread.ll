; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_process.c_kernel_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_process.c_kernel_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i64, i32 }

@kernel_thread_helper = common dso_local global i64 0, align 8
@I_DCCR_BITNR = common dso_local global i32 0, align 4
@CLONE_VM = common dso_local global i64 0, align 8
@CLONE_UNTRACED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_thread(i32 (i8*)* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32 (i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pt_regs, align 8
  store i32 (i8*)* %0, i32 (i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = call i32 @memset(%struct.pt_regs* %7, i32 0, i32 32)
  %9 = load i32 (i8*)*, i32 (i8*)** %4, align 8
  %10 = ptrtoint i32 (i8*)* %9 to i64
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 1
  store i64 %13, i64* %14, align 8
  %15 = load i64, i64* @kernel_thread_helper, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 2
  store i64 %15, i64* %16, align 8
  %17 = load i32, i32* @I_DCCR_BITNR, align 4
  %18 = shl i32 1, %17
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 3
  store i32 %18, i32* %19, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @CLONE_VM, align 8
  %22 = or i64 %20, %21
  %23 = load i64, i64* @CLONE_UNTRACED, align 8
  %24 = or i64 %22, %23
  %25 = call i32 @do_fork(i64 %24, i32 0, %struct.pt_regs* %7, i32 0, i32* null, i32* null)
  ret i32 %25
}

declare dso_local i32 @memset(%struct.pt_regs*, i32, i32) #1

declare dso_local i32 @do_fork(i64, i32, %struct.pt_regs*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
