; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_io_pclose.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_io_pclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @io_pclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_pclose(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32** @tofilep(i32* %5)
  store i32** %6, i32*** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = load i32**, i32*** %3, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @lua_pclose(i32* %7, i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32**, i32*** %3, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @pushresult(i32* %12, i32 %13, i32* null)
  ret i32 %14
}

declare dso_local i32** @tofilep(i32*) #1

declare dso_local i32 @lua_pclose(i32*, i32*) #1

declare dso_local i32 @pushresult(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
