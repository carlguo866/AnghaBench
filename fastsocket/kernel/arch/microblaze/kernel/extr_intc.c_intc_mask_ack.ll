; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_intc.c_intc_mask_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_intc.c_intc_mask_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"disable_and_ack: %d\0A\00", align 1
@INTC_BASE = common dso_local global i64 0, align 8
@CIE = common dso_local global i64 0, align 8
@IAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @intc_mask_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intc_mask_ack(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = shl i32 1, %4
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i64, i64* @INTC_BASE, align 8
  %10 = load i64, i64* @CIE, align 8
  %11 = add nsw i64 %9, %10
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @out_be32(i64 %11, i64 %12)
  %14 = load i64, i64* @INTC_BASE, align 8
  %15 = load i64, i64* @IAR, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @out_be32(i64 %16, i64 %17)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @out_be32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
