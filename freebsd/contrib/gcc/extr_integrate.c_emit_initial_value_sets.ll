; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_integrate.c_emit_initial_value_sets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_integrate.c_emit_initial_value_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.initial_value_struct* }
%struct.initial_value_struct = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emit_initial_value_sets() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.initial_value_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  store %struct.initial_value_struct* %7, %struct.initial_value_struct** %2, align 8
  %8 = load %struct.initial_value_struct*, %struct.initial_value_struct** %2, align 8
  %9 = icmp eq %struct.initial_value_struct* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %45

11:                                               ; preds = %0
  %12 = call i32 (...) @start_sequence()
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %37, %11
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.initial_value_struct*, %struct.initial_value_struct** %2, align 8
  %16 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %13
  %20 = load %struct.initial_value_struct*, %struct.initial_value_struct** %2, align 8
  %21 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.initial_value_struct*, %struct.initial_value_struct** %2, align 8
  %29 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @emit_move_insn(i32 %27, i32 %35)
  br label %37

37:                                               ; preds = %19
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %13

40:                                               ; preds = %13
  %41 = call i32 (...) @get_insns()
  store i32 %41, i32* %4, align 4
  %42 = call i32 (...) @end_sequence()
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @emit_insn_at_entry(i32 %43)
  store i32 0, i32* %1, align 4
  br label %45

45:                                               ; preds = %40, %10
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @emit_insn_at_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
