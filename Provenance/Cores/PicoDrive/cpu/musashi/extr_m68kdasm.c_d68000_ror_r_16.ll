; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kdasm.c_d68000_ror_r_16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kdasm.c_d68000_ror_r_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_dasm_str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ror.w   D%d, D%d\00", align 1
@g_cpu_ir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @d68000_ror_r_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d68000_ror_r_16() #0 {
  %1 = load i32, i32* @g_dasm_str, align 4
  %2 = load i32, i32* @g_cpu_ir, align 4
  %3 = ashr i32 %2, 9
  %4 = and i32 %3, 7
  %5 = load i32, i32* @g_cpu_ir, align 4
  %6 = and i32 %5, 7
  %7 = call i32 @sprintf(i32 %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %6)
  ret void
}

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
