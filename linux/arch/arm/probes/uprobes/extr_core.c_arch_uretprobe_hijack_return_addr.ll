; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/uprobes/extr_core.c_arch_uretprobe_hijack_return_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/uprobes/extr_core.c_arch_uretprobe_hijack_return_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_uretprobe_hijack_return_addr(i64 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load i64, i64* %5, align 8
  ret i64 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
