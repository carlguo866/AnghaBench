; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-opc.c_arc_opcode_limm_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-opc.c_arc_opcode_limm_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@limm = common dso_local global i64 0, align 8
@limm_p = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arc_opcode_limm_p(i64* %0) #0 {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = load i64*, i64** %2, align 8
  %4 = icmp ne i64* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i64, i64* @limm, align 8
  %7 = load i64*, i64** %2, align 8
  store i64 %6, i64* %7, align 8
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i32, i32* @limm_p, align 4
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
