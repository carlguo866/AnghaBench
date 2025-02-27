; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_irq.c_sn_intr_redirect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_irq.c_sn_intr_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn_irq_info = type { i32 }
%struct.ia64_sal_retval = type { i64, i64 }

@SN_SAL_IOIF_INTERRUPT = common dso_local global i64 0, align 8
@SAL_INTR_REDIRECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sn_intr_redirect(i64 %0, i32 %1, %struct.sn_irq_info* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sn_irq_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ia64_sal_retval, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sn_irq_info* %2, %struct.sn_irq_info** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = getelementptr inbounds %struct.ia64_sal_retval, %struct.ia64_sal_retval* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.ia64_sal_retval, %struct.ia64_sal_retval* %11, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load i64, i64* @SN_SAL_IOIF_INTERRUPT, align 8
  %15 = load i64, i64* @SAL_INTR_REDIRECT, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.sn_irq_info*, %struct.sn_irq_info** %8, align 8
  %20 = call i32 @__pa(%struct.sn_irq_info* %19)
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = bitcast %struct.ia64_sal_retval* %11 to { i64, i64 }*
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @SAL_CALL_NOLOCK(i64 %26, i64 %28, i64 %14, i64 %15, i64 %16, i64 %18, i32 %20, i64 %21, i64 %23, i32 0)
  %30 = getelementptr inbounds %struct.ia64_sal_retval, %struct.ia64_sal_retval* %11, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  ret i64 %31
}

declare dso_local i32 @SAL_CALL_NOLOCK(i64, i64, i64, i64, i64, i64, i32, i64, i64, i32) #1

declare dso_local i32 @__pa(%struct.sn_irq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
