; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_cgen-opc.c_cgen_lookup_get_insn_operands.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_cgen-opc.c_cgen_lookup_get_insn_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @cgen_lookup_get_insn_operands(i32 %0, i32* %1, i32 %2, i8* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32*, i32** %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i8*, i8** %12, align 8
  %20 = load i32, i32* %13, align 4
  %21 = load i32*, i32** %15, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32* @cgen_lookup_insn(i32 %16, i32* %17, i32 %18, i8* %19, i32 %20, i32* %21, i32 %24)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %7
  store i32* null, i32** %8, align 8
  br label %36

29:                                               ; preds = %7
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = call i32 @cgen_get_insn_operands(i32 %30, i32* %31, i32* %32, i32* %33)
  %35 = load i32*, i32** %10, align 8
  store i32* %35, i32** %8, align 8
  br label %36

36:                                               ; preds = %29, %28
  %37 = load i32*, i32** %8, align 8
  ret i32* %37
}

declare dso_local i32* @cgen_lookup_insn(i32, i32*, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @cgen_get_insn_operands(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
