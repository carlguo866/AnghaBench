; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_sltiu64_32.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_sltiu64_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@const_zero = common dso_local global i32 0, align 4
@const_one = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_sltiu64_32(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @emit_sltiu32(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @emit_test(i32 %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @emit_cmovne(i32* @const_zero, i32 %24)
  br label %31

26:                                               ; preds = %4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @emit_cmpimm(i32 %27, i32 -1)
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @emit_cmovne(i32* @const_one, i32 %29)
  br label %31

31:                                               ; preds = %26, %20
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_sltiu32(i32, i32, i32) #1

declare dso_local i32 @emit_test(i32, i32) #1

declare dso_local i32 @emit_cmovne(i32*, i32) #1

declare dso_local i32 @emit_cmpimm(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
