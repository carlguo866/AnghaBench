; ModuleID = '/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_traps.c_die_if_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_traps.c_die_if_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @die_if_kernel(i8* %0, %struct.pt_regs* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %8 = call i64 @user_mode(%struct.pt_regs* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %16

11:                                               ; preds = %3
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @die(i8* %12, %struct.pt_regs* %13, i64 %14)
  br label %16

16:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @die(i8*, %struct.pt_regs*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
