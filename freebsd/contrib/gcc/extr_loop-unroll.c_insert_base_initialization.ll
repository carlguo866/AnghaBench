; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_insert_base_initialization.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_insert_base_initialization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iv_to_split = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iv_to_split*, i32)* @insert_base_initialization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_base_initialization(%struct.iv_to_split* %0, i32 %1) #0 {
  %3 = alloca %struct.iv_to_split*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iv_to_split* %0, %struct.iv_to_split** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @single_set(i32 %7)
  %9 = load %struct.iv_to_split*, %struct.iv_to_split** %3, align 8
  %10 = call i32* @get_ivts_expr(i32 %8, %struct.iv_to_split* %9)
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @copy_rtx(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = call i32 (...) @start_sequence()
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.iv_to_split*, %struct.iv_to_split** %3, align 8
  %16 = getelementptr inbounds %struct.iv_to_split, %struct.iv_to_split* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @force_operand(i32 %14, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.iv_to_split*, %struct.iv_to_split** %3, align 8
  %21 = getelementptr inbounds %struct.iv_to_split, %struct.iv_to_split* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.iv_to_split*, %struct.iv_to_split** %3, align 8
  %26 = getelementptr inbounds %struct.iv_to_split, %struct.iv_to_split* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @emit_move_insn(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %2
  %31 = call i32 (...) @get_insns()
  store i32 %31, i32* %6, align 4
  %32 = call i32 (...) @end_sequence()
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @emit_insn_before(i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @copy_rtx(i32) #1

declare dso_local i32* @get_ivts_expr(i32, %struct.iv_to_split*) #1

declare dso_local i32 @single_set(i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @force_operand(i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @emit_insn_before(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
