; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_irq_work.c_next_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_irq_work.c_next_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_work = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.irq_work* (%struct.irq_work*, i32)* @next_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.irq_work* @next_flags(%struct.irq_work* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_work*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.irq_work* %0, %struct.irq_work** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.irq_work*, %struct.irq_work** %3, align 8
  %7 = ptrtoint %struct.irq_work* %6 to i64
  store i64 %7, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = load i64, i64* %5, align 8
  %11 = or i64 %10, %9
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = inttoptr i64 %12 to %struct.irq_work*
  ret %struct.irq_work* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
