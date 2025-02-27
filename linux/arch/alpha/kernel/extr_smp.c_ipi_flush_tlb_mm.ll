; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_smp.c_ipi_flush_tlb_mm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_smp.c_ipi_flush_tlb_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ipi_flush_tlb_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipi_flush_tlb_mm(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.mm_struct*
  store %struct.mm_struct* %5, %struct.mm_struct** %3, align 8
  %6 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %10 = icmp eq %struct.mm_struct* %6, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = call i32 (...) @asn_locked()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %16 = call i32 @flush_tlb_current(%struct.mm_struct* %15)
  br label %20

17:                                               ; preds = %11, %1
  %18 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %19 = call i32 @flush_tlb_other(%struct.mm_struct* %18)
  br label %20

20:                                               ; preds = %17, %14
  ret void
}

declare dso_local i32 @asn_locked(...) #1

declare dso_local i32 @flush_tlb_current(%struct.mm_struct*) #1

declare dso_local i32 @flush_tlb_other(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
