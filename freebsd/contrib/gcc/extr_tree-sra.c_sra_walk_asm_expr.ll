; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_sra_walk_asm_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_sra_walk_asm_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sra_walk_fns = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.sra_walk_fns*)* @sra_walk_asm_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sra_walk_asm_expr(i32 %0, i32* %1, %struct.sra_walk_fns* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sra_walk_fns*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.sra_walk_fns* %2, %struct.sra_walk_fns** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @ASM_INPUTS(i32 %7)
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.sra_walk_fns*, %struct.sra_walk_fns** %6, align 8
  %11 = call i32 @sra_walk_tree_list(i32 %8, i32* %9, i32 0, %struct.sra_walk_fns* %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ASM_OUTPUTS(i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.sra_walk_fns*, %struct.sra_walk_fns** %6, align 8
  %16 = call i32 @sra_walk_tree_list(i32 %13, i32* %14, i32 1, %struct.sra_walk_fns* %15)
  ret void
}

declare dso_local i32 @sra_walk_tree_list(i32, i32*, i32, %struct.sra_walk_fns*) #1

declare dso_local i32 @ASM_INPUTS(i32) #1

declare dso_local i32 @ASM_OUTPUTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
