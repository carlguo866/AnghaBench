; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r4k.c_local_flush_tlb_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r4k.c_local_flush_tlb_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@FLUSH_ITLB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_all() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* %1, align 8
  %5 = call i32 @ENTER_CRITICAL(i64 %4)
  %6 = call i64 (...) @read_c0_entryhi()
  store i64 %6, i64* %2, align 8
  %7 = call i32 @write_c0_entrylo0(i32 0)
  %8 = call i32 @write_c0_entrylo1(i32 0)
  %9 = call i32 (...) @read_c0_wired()
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %14, %0
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @UNIQUE_ENTRYHI(i32 %15)
  %17 = call i32 @write_c0_entryhi(i64 %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @write_c0_index(i32 %18)
  %20 = call i32 (...) @mtc0_tlbw_hazard()
  %21 = call i32 (...) @tlb_write_indexed()
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %10

24:                                               ; preds = %10
  %25 = call i32 (...) @tlbw_use_hazard()
  %26 = load i64, i64* %2, align 8
  %27 = call i32 @write_c0_entryhi(i64 %26)
  %28 = load i32, i32* @FLUSH_ITLB, align 4
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @EXIT_CRITICAL(i64 %29)
  ret void
}

declare dso_local i32 @ENTER_CRITICAL(i64) #1

declare dso_local i64 @read_c0_entryhi(...) #1

declare dso_local i32 @write_c0_entrylo0(i32) #1

declare dso_local i32 @write_c0_entrylo1(i32) #1

declare dso_local i32 @read_c0_wired(...) #1

declare dso_local i32 @write_c0_entryhi(i64) #1

declare dso_local i64 @UNIQUE_ENTRYHI(i32) #1

declare dso_local i32 @write_c0_index(i32) #1

declare dso_local i32 @mtc0_tlbw_hazard(...) #1

declare dso_local i32 @tlb_write_indexed(...) #1

declare dso_local i32 @tlbw_use_hazard(...) #1

declare dso_local i32 @EXIT_CRITICAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
