; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_nops_for_insn_or_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_nops_for_insn_or_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.mips_cl_insn = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@INSN_UNCOND_BRANCH_DELAY = common dso_local global i32 0, align 4
@INSN_COND_BRANCH_DELAY = common dso_local global i32 0, align 4
@INSN_COND_BRANCH_LIKELY = common dso_local global i32 0, align 4
@NOP_INSN = common dso_local global i32 0, align 4
@mips_opts = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MIPS16_INSN_BRANCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mips_cl_insn*, %struct.mips_cl_insn*)* @nops_for_insn_or_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nops_for_insn_or_target(%struct.mips_cl_insn* %0, %struct.mips_cl_insn* %1) #0 {
  %3 = alloca %struct.mips_cl_insn*, align 8
  %4 = alloca %struct.mips_cl_insn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mips_cl_insn* %0, %struct.mips_cl_insn** %3, align 8
  store %struct.mips_cl_insn* %1, %struct.mips_cl_insn** %4, align 8
  %7 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %3, align 8
  %8 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %9 = call i32 @nops_for_insn(%struct.mips_cl_insn* %7, %struct.mips_cl_insn* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %11 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @INSN_UNCOND_BRANCH_DELAY, align 4
  %16 = load i32, i32* @INSN_COND_BRANCH_DELAY, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @INSN_COND_BRANCH_LIKELY, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %14, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %3, align 8
  %24 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %25 = load i32, i32* @NOP_INSN, align 4
  %26 = call i32 (i32, %struct.mips_cl_insn*, %struct.mips_cl_insn*, ...) @nops_for_sequence(i32 2, %struct.mips_cl_insn* %23, %struct.mips_cl_insn* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %22
  br label %56

33:                                               ; preds = %2
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mips_opts, i32 0, i32 0), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %38 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MIPS16_INSN_BRANCH, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %3, align 8
  %47 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %48 = call i32 (i32, %struct.mips_cl_insn*, %struct.mips_cl_insn*, ...) @nops_for_sequence(i32 1, %struct.mips_cl_insn* %46, %struct.mips_cl_insn* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %45
  br label %55

55:                                               ; preds = %54, %36, %33
  br label %56

56:                                               ; preds = %55, %32
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @nops_for_insn(%struct.mips_cl_insn*, %struct.mips_cl_insn*) #1

declare dso_local i32 @nops_for_sequence(i32, %struct.mips_cl_insn*, %struct.mips_cl_insn*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
