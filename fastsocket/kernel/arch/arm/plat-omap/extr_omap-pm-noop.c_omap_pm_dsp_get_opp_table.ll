; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap-pm-noop.c_omap_pm_dsp_get_opp_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap-pm-noop.c_omap_pm_dsp_get_opp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_opp = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"OMAP PM: DSP request for OPP table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.omap_opp* @omap_pm_dsp_get_opp_table() #0 {
  %1 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  ret %struct.omap_opp* null
}

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
