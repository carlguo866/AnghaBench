; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_minsyms.c_lookup_solib_trampoline_symbol_by_pc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_minsyms.c_lookup_solib_trampoline_symbol_by_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minimal_symbol = type { i32 }

@mst_solib_trampoline = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.minimal_symbol* @lookup_solib_trampoline_symbol_by_pc(i32 %0) #0 {
  %2 = alloca %struct.minimal_symbol*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.minimal_symbol*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i32 %5)
  store %struct.minimal_symbol* %6, %struct.minimal_symbol** %4, align 8
  %7 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %8 = icmp ne %struct.minimal_symbol* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %11 = call i64 @MSYMBOL_TYPE(%struct.minimal_symbol* %10)
  %12 = load i64, i64* @mst_solib_trampoline, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  store %struct.minimal_symbol* %15, %struct.minimal_symbol** %2, align 8
  br label %17

16:                                               ; preds = %9, %1
  store %struct.minimal_symbol* null, %struct.minimal_symbol** %2, align 8
  br label %17

17:                                               ; preds = %16, %14
  %18 = load %struct.minimal_symbol*, %struct.minimal_symbol** %2, align 8
  ret %struct.minimal_symbol* %18
}

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i32) #1

declare dso_local i64 @MSYMBOL_TYPE(%struct.minimal_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
