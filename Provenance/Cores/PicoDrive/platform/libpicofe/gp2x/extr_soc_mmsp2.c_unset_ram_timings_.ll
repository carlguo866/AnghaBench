; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_soc_mmsp2.c_unset_ram_timings_.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_soc_mmsp2.c_unset_ram_timings_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memtimex_old = common dso_local global i32* null, align 8
@memregs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"RAM timings reset to startup values.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @unset_ram_timings_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unset_ram_timings_() #0 {
  %1 = load i32*, i32** @memtimex_old, align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 0
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** @memregs, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 7169
  store i32 %3, i32* %5, align 4
  %6 = load i32*, i32** @memtimex_old, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, 32768
  %10 = load i32*, i32** @memregs, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 7170
  store i32 %9, i32* %11, align 4
  %12 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
