; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/vr41xx/common/extr_icu.c_vr41xx_disable_aiuint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/vr41xx/common/extr_icu.c_vr41xx_disable_aiuint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@irq_desc = common dso_local global %struct.irq_desc* null, align 8
@AIU_IRQ = common dso_local global i32 0, align 4
@CPU_VR4111 = common dso_local global i64 0, align 8
@CPU_VR4121 = common dso_local global i64 0, align 8
@MAIUINTREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vr41xx_disable_aiuint(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.irq_desc*, %struct.irq_desc** @irq_desc, align 8
  %6 = load i32, i32* @AIU_IRQ, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %5, i64 %7
  store %struct.irq_desc* %8, %struct.irq_desc** %3, align 8
  %9 = call i64 (...) @current_cpu_type()
  %10 = load i64, i64* @CPU_VR4111, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = call i64 (...) @current_cpu_type()
  %14 = load i64, i64* @CPU_VR4121, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12, %1
  %17 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %18 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %17, i32 0, i32 0
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* @MAIUINTREG, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @icu1_clear(i32 %21, i32 %22)
  %24 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %25 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %24, i32 0, i32 0
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  br label %28

28:                                               ; preds = %16, %12
  ret void
}

declare dso_local i64 @current_cpu_type(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @icu1_clear(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
