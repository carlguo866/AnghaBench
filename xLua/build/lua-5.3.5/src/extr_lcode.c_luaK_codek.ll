; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lcode.c_luaK_codek.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lcode.c_luaK_codek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXARG_Bx = common dso_local global i32 0, align 4
@OP_LOADK = common dso_local global i32 0, align 4
@OP_LOADKX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaK_codek(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @MAXARG_Bx, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @OP_LOADK, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @luaK_codeABx(i32* %13, i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  br label %27

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @OP_LOADKX, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @luaK_codeABx(i32* %19, i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @codeextraarg(i32* %23, i32 %24)
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %18, %12
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @luaK_codeABx(i32*, i32, i32, i32) #1

declare dso_local i32 @codeextraarg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
