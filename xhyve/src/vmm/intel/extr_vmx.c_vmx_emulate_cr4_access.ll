; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_emulate_cr4_access.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_emulate_cr4_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNHANDLED = common dso_local global i32 0, align 4
@VMCS_CR4_SHADOW = common dso_local global i32 0, align 4
@cr4_ones_mask = common dso_local global i32 0, align 4
@cr4_zeros_mask = common dso_local global i32 0, align 4
@VMCS_GUEST_CR4 = common dso_local global i32 0, align 4
@HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @vmx_emulate_cr4_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_emulate_cr4_access(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 240
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @UNHANDLED, align 4
  store i32 %12, i32* %3, align 4
  br label %35

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 15
  %18 = call i32 @vmx_get_guest_reg(i32 %14, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @VMCS_CR4_SHADOW, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @vmcs_write(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @cr4_ones_mask, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @cr4_zeros_mask, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @VMCS_GUEST_CR4, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @vmcs_write(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @HANDLED, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %13, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @vmx_get_guest_reg(i32, i32) #1

declare dso_local i32 @vmcs_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
