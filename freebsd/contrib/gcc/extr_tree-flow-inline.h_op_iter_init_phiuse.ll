; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-flow-inline.h_op_iter_init_phiuse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-flow-inline.h_op_iter_init_phiuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@SSA_OP_USE = common dso_local global i32 0, align 4
@SSA_OP_VIRTUAL_USES = common dso_local global i32 0, align 4
@NULL_USE_OPERAND_P = common dso_local global i32 0, align 4
@ssa_op_iter_use = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32)* @op_iter_init_phiuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_iter_init_phiuse(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @PHI_RESULT(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = call i32 @clear_and_done_ssa_iter(%struct.TYPE_5__* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SSA_OP_USE, align 4
  %18 = load i32, i32* @SSA_OP_VIRTUAL_USES, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @gcc_assert(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @is_gimple_reg(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @SSA_OP_USE, align 4
  br label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @SSA_OP_VIRTUAL_USES, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* @NULL_USE_OPERAND_P, align 4
  store i32 %40, i32* %4, align 4
  br label %54

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @PHI_NUM_ARGS(i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @ssa_op_iter_use, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = call i32 @op_iter_next_use(%struct.TYPE_5__* %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %41, %37
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @PHI_RESULT(i32) #1

declare dso_local i32 @clear_and_done_ssa_iter(%struct.TYPE_5__*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @is_gimple_reg(i32) #1

declare dso_local i32 @PHI_NUM_ARGS(i32) #1

declare dso_local i32 @op_iter_next_use(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
