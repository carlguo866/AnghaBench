; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_ipipe.c___ipipe_enable_irqdesc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_ipipe.c___ipipe_enable_irqdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipipe_domain = type { i32 }
%struct.irq_desc = type { i64 }

@ipipe_root = common dso_local global %struct.ipipe_domain zeroinitializer, align 4
@__ipipe_irq_lvdepth = common dso_local global i32* null, align 8
@__ipipe_irq_lvmask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ipipe_enable_irqdesc(%struct.ipipe_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.ipipe_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.ipipe_domain* %0, %struct.ipipe_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.irq_desc* @irq_to_desc(i32 %7)
  store %struct.irq_desc* %8, %struct.irq_desc** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @__ipipe_get_irq_priority(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %12 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.ipipe_domain*, %struct.ipipe_domain** %3, align 8
  %14 = icmp ne %struct.ipipe_domain* %13, @ipipe_root
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32*, i32** @__ipipe_irq_lvdepth, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i32 @atomic_inc_return(i32* %19)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @__set_bit(i32 %23, i32* @__ipipe_irq_lvmask)
  br label %25

25:                                               ; preds = %22, %15, %2
  ret void
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @__ipipe_get_irq_priority(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
