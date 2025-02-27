; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/sys-i386/extr_registers.c_put_fp_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/sys-i386/extr_registers.c_put_fp_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@have_fpx_regs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @put_fp_registers(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %6 = load i64, i64* @have_fpx_regs, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i64*, i64** %5, align 8
  %11 = call i32 @restore_fpx_registers(i32 %9, i64* %10)
  store i32 %11, i32* %3, align 4
  br label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i64*, i64** %5, align 8
  %15 = call i32 @restore_fp_registers(i32 %13, i64* %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @restore_fpx_registers(i32, i64*) #1

declare dso_local i32 @restore_fp_registers(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
