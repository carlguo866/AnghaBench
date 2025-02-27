; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmc/extr_pmc_util.c_pmc_util_get_pid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmc/extr_pmc_util.c_pmc_util_get_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcstat_args = type { i32, i32 }
%struct.pmcstat_target = type { i32 }

@FLAG_HAS_COMMANDLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmc_util_get_pid(%struct.pmcstat_args* %0) #0 {
  %2 = alloca %struct.pmcstat_args*, align 8
  %3 = alloca %struct.pmcstat_target*, align 8
  store %struct.pmcstat_args* %0, %struct.pmcstat_args** %2, align 8
  %4 = load %struct.pmcstat_args*, %struct.pmcstat_args** %2, align 8
  %5 = getelementptr inbounds %struct.pmcstat_args, %struct.pmcstat_args* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @FLAG_HAS_COMMANDLINE, align 4
  %8 = and i32 %6, %7
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.pmcstat_args*, %struct.pmcstat_args** %2, align 8
  %11 = getelementptr inbounds %struct.pmcstat_args, %struct.pmcstat_args* %10, i32 0, i32 1
  %12 = call %struct.pmcstat_target* @SLIST_FIRST(i32* %11)
  store %struct.pmcstat_target* %12, %struct.pmcstat_target** %3, align 8
  %13 = load %struct.pmcstat_target*, %struct.pmcstat_target** %3, align 8
  %14 = getelementptr inbounds %struct.pmcstat_target, %struct.pmcstat_target* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  ret i32 %15
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.pmcstat_target* @SLIST_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
