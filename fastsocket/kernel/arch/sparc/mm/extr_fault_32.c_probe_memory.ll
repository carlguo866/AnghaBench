; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_fault_32.c_probe_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_fault_32.c_probe_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@sp_banks = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @probe_memory() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %20, %0
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sp_banks, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sp_banks, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %1, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %1, align 8
  br label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %3

23:                                               ; preds = %3
  %24 = load i64, i64* %1, align 8
  ret i64 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
