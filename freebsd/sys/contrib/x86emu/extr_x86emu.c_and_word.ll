; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_and_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_and_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_OF = common dso_local global i32 0, align 4
@F_CF = common dso_local global i32 0, align 4
@F_AF = common dso_local global i32 0, align 4
@F_SF = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@F_PF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*, i32, i32)* @and_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @and_word(%struct.x86emu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.x86emu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @F_OF, align 4
  %12 = call i32 @CLEAR_FLAG(i32 %11)
  %13 = load i32, i32* @F_CF, align 4
  %14 = call i32 @CLEAR_FLAG(i32 %13)
  %15 = load i32, i32* @F_AF, align 4
  %16 = call i32 @CLEAR_FLAG(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 32768
  %19 = load i32, i32* @F_SF, align 4
  %20 = call i32 @CONDITIONAL_SET_FLAG(i32 %18, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @F_ZF, align 4
  %25 = call i32 @CONDITIONAL_SET_FLAG(i32 %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 255
  %28 = call i32 @PARITY(i32 %27)
  %29 = load i32, i32* @F_PF, align 4
  %30 = call i32 @CONDITIONAL_SET_FLAG(i32 %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32 @CLEAR_FLAG(i32) #1

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

declare dso_local i32 @PARITY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
