; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_cpuid.c_kvm_supported_xcr0.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_cpuid.c_kvm_supported_xcr0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KVM_SUPPORTED_XCR0 = common dso_local global i32 0, align 4
@host_xcr0 = common dso_local global i32 0, align 4
@XFEATURE_MASK_BNDREGS = common dso_local global i32 0, align 4
@XFEATURE_MASK_BNDCSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_supported_xcr0() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @KVM_SUPPORTED_XCR0, align 4
  %3 = load i32, i32* @host_xcr0, align 4
  %4 = and i32 %2, %3
  store i32 %4, i32* %1, align 4
  %5 = call i32 (...) @kvm_mpx_supported()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @XFEATURE_MASK_BNDREGS, align 4
  %9 = load i32, i32* @XFEATURE_MASK_BNDCSR, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %1, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %1, align 4
  br label %14

14:                                               ; preds = %7, %0
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @kvm_mpx_supported(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
