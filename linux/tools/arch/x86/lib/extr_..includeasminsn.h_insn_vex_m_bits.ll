; ModuleID = '/home/carl/AnghaBench/linux/tools/arch/x86/lib/extr_..includeasminsn.h_insn_vex_m_bits.c'
source_filename = "/home/carl/AnghaBench/linux/tools/arch/x86/lib/extr_..includeasminsn.h_insn_vex_m_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@X86_VEX2_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.insn*)* @insn_vex_m_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insn_vex_m_bits(%struct.insn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.insn*, align 8
  store %struct.insn* %0, %struct.insn** %3, align 8
  %4 = load %struct.insn*, %struct.insn** %3, align 8
  %5 = getelementptr inbounds %struct.insn, %struct.insn* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @X86_VEX2_M, align 4
  store i32 %10, i32* %2, align 4
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.insn*, %struct.insn** %3, align 8
  %13 = getelementptr inbounds %struct.insn, %struct.insn* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.insn*, %struct.insn** %3, align 8
  %19 = getelementptr inbounds %struct.insn, %struct.insn* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @X86_VEX3_M(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %33

25:                                               ; preds = %11
  %26 = load %struct.insn*, %struct.insn** %3, align 8
  %27 = getelementptr inbounds %struct.insn, %struct.insn* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @X86_EVEX_M(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %25, %17, %9
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @X86_VEX3_M(i32) #1

declare dso_local i32 @X86_EVEX_M(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
