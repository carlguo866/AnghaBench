; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_4xx.c_ibm440gx_fixup_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_4xx.c_ibm440gx_fixup_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"/plb/opb/serial@40000200\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"/plb/opb/serial@40000300\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibm440gx_fixup_clocks(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @__ibm440eplike_fixup_clocks(i32 %8, i32 %9, i32 1)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @eplike_fixup_uart_clk(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @eplike_fixup_uart_clk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @__ibm440eplike_fixup_clocks(i32, i32, i32) #1

declare dso_local i32 @eplike_fixup_uart_clk(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
