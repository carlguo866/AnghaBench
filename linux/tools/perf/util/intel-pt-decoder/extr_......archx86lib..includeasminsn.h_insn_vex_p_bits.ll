; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_......archx86lib..includeasminsn.h_insn_vex_p_bits.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_......archx86lib..includeasminsn.h_insn_vex_p_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.insn*)* @insn_vex_p_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insn_vex_p_bits(%struct.insn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.insn*, align 8
  store %struct.insn* %0, %struct.insn** %3, align 8
  %4 = load %struct.insn*, %struct.insn** %3, align 8
  %5 = getelementptr inbounds %struct.insn, %struct.insn* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.insn*, %struct.insn** %3, align 8
  %11 = getelementptr inbounds %struct.insn, %struct.insn* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @X86_VEX_P(i32 %15)
  store i32 %16, i32* %2, align 4
  br label %25

17:                                               ; preds = %1
  %18 = load %struct.insn*, %struct.insn** %3, align 8
  %19 = getelementptr inbounds %struct.insn, %struct.insn* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @X86_VEX_P(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %17, %9
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @X86_VEX_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
