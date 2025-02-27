; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_sp_maddf.c_ieee754sp_maddf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_sp_maddf.c_ieee754sp_maddf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ieee754sp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754sp_maddf(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %union.ieee754sp, align 4
  %5 = alloca %union.ieee754sp, align 4
  %6 = alloca %union.ieee754sp, align 4
  %7 = alloca %union.ieee754sp, align 4
  %8 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %5, i32 0, i32 0
  store i32 %0, i32* %8, align 4
  %9 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %6, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  %10 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %7, i32 0, i32 0
  store i32 %2, i32* %10, align 4
  %11 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %6, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %7, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @_sp_maddf(i32 %12, i32 %14, i32 %16, i32 0)
  %18 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %4, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  ret i32 %20
}

declare dso_local i32 @_sp_maddf(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
