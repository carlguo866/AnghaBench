; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_uengine.c_ixp2000_uengine_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_uengine.c_ixp2000_uengine_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IXP_RESET1 = common dso_local global i32 0, align 4
@ixp2000_uengine_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixp2000_uengine_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @IXP_RESET1, align 4
  %5 = call i32 @ixp2000_reg_read(i32 %4)
  %6 = load i32, i32* @ixp2000_uengine_mask, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %5, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @ixp2000_uengine_mask, align 4
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @IXP_RESET1, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @ixp2000_reg_wrb(i32 %12, i32 %15)
  %17 = load i32, i32* @IXP_RESET1, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @ixp2000_reg_wrb(i32 %17, i32 %18)
  ret void
}

declare dso_local i32 @ixp2000_reg_read(i32) #1

declare dso_local i32 @ixp2000_reg_wrb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
