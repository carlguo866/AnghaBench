; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_emit_insn_after_with_line_notes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_emit_insn_after_with_line_notes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_insn_after_with_line_notes(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @find_line_note(i64 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @find_line_note(i64 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @emit_insn_after(i64 %14, i64 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @emit_note_copy_after(i64 %20, i64 %21)
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @emit_note_copy_after(i64 %27, i64 %28)
  br label %30

30:                                               ; preds = %26, %23
  ret void
}

declare dso_local i64 @find_line_note(i64) #1

declare dso_local i64 @emit_insn_after(i64, i64) #1

declare dso_local i32 @emit_note_copy_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
