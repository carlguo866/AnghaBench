; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_ltable.c_luaH_getstr.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_ltable.c_luaH_getstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luaO_nilobject = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @luaH_getstr(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32* @hashstr(i32* %7, i32* %8)
  store i32* %9, i32** %6, align 8
  br label %10

10:                                               ; preds = %28, %2
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @gkey(i32* %11)
  %13 = call i64 @ttisstring(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @gkey(i32* %16)
  %18 = call i32* @rawtsvalue(i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32*, i32** %6, align 8
  %23 = call i32* @gval(i32* %22)
  store i32* %23, i32** %3, align 8
  br label %33

24:                                               ; preds = %15, %10
  %25 = load i32*, i32** %6, align 8
  %26 = call i32* @gnext(i32* %25)
  store i32* %26, i32** %6, align 8
  br label %27

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %10, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** @luaO_nilobject, align 8
  store i32* %32, i32** %3, align 8
  br label %33

33:                                               ; preds = %31, %21
  %34 = load i32*, i32** %3, align 8
  ret i32* %34
}

declare dso_local i32* @hashstr(i32*, i32*) #1

declare dso_local i64 @ttisstring(i32) #1

declare dso_local i32 @gkey(i32*) #1

declare dso_local i32* @rawtsvalue(i32) #1

declare dso_local i32* @gval(i32*) #1

declare dso_local i32* @gnext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
