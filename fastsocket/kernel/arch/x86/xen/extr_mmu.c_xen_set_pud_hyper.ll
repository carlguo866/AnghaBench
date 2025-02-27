; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_xen_set_pud_hyper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_xen_set_pud_hyper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_update = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@pud_update_batched = common dso_local global i32 0, align 4
@PARAVIRT_LAZY_MMU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_set_pud_hyper(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmu_update, align 4
  %6 = alloca %struct.TYPE_2__, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @preempt_disable()
  %8 = call i32 (...) @xen_mc_batch()
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @arbitrary_virt_to_machine(i32* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.mmu_update, %struct.mmu_update* %5, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @pud_val_ma(i32 %15)
  %17 = getelementptr inbounds %struct.mmu_update, %struct.mmu_update* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = call i32 @xen_extend_mmu_update(%struct.mmu_update* %5)
  %19 = load i32, i32* @pud_update_batched, align 4
  %20 = call i64 (...) @paravirt_get_lazy_mode()
  %21 = load i64, i64* @PARAVIRT_LAZY_MMU, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ADD_STATS(i32 %19, i32 %23)
  %25 = load i64, i64* @PARAVIRT_LAZY_MMU, align 8
  %26 = call i32 @xen_mc_issue(i64 %25)
  %27 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @xen_mc_batch(...) #1

declare dso_local i32 @arbitrary_virt_to_machine(i32*) #1

declare dso_local i32 @pud_val_ma(i32) #1

declare dso_local i32 @xen_extend_mmu_update(%struct.mmu_update*) #1

declare dso_local i32 @ADD_STATS(i32, i32) #1

declare dso_local i64 @paravirt_get_lazy_mode(...) #1

declare dso_local i32 @xen_mc_issue(i64) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
