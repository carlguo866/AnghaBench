; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_ltm.c_luaT_gettmbyobj.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_ltm.c_luaT_gettmbyobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32*, i32** }

@luaO_nilobject = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @luaT_gettmbyobj(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i64 @ttnov(i32* %8)
  switch i64 %9, label %20 [
    i64 129, label %10
    i64 128, label %15
  ]

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = call %struct.TYPE_5__* @hvalue(i32* %11)
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  br label %29

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call %struct.TYPE_4__* @uvalue(i32* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  br label %29

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = call %struct.TYPE_6__* @G(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @ttnov(i32* %25)
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %7, align 8
  br label %29

29:                                               ; preds = %20, %15, %10
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call %struct.TYPE_6__* @G(i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @luaH_getshortstr(i32* %33, i32 %40)
  br label %44

42:                                               ; preds = %29
  %43 = load i32*, i32** @luaO_nilobject, align 8
  br label %44

44:                                               ; preds = %42, %32
  %45 = phi i32* [ %41, %32 ], [ %43, %42 ]
  ret i32* %45
}

declare dso_local i64 @ttnov(i32*) #1

declare dso_local %struct.TYPE_5__* @hvalue(i32*) #1

declare dso_local %struct.TYPE_4__* @uvalue(i32*) #1

declare dso_local %struct.TYPE_6__* @G(i32*) #1

declare dso_local i32* @luaH_getshortstr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
