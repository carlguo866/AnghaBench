; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lparser.c_forstat.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lparser.c_forstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"'=' or 'in' expected\00", align 1
@TK_END = common dso_local global i32 0, align 4
@TK_FOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32)* @forstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forstat(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @enterblock(i32* %11, i32* %7, i32 1)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = call i32 @luaX_next(%struct.TYPE_11__* %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = call i32* @str_checkname(%struct.TYPE_11__* %15)
  store i32* %16, i32** %6, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %30 [
    i32 61, label %21
    i32 44, label %26
    i32 128, label %26
  ]

21:                                               ; preds = %2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @fornum(%struct.TYPE_11__* %22, i32* %23, i32 %24)
  br label %33

26:                                               ; preds = %2, %2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @forlist(%struct.TYPE_11__* %27, i32* %28)
  br label %33

30:                                               ; preds = %2
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = call i32 @luaX_syntaxerror(%struct.TYPE_11__* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %26, %21
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = load i32, i32* @TK_END, align 4
  %36 = load i32, i32* @TK_FOR, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @check_match(%struct.TYPE_11__* %34, i32 %35, i32 %36, i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @leaveblock(i32* %39)
  ret void
}

declare dso_local i32 @enterblock(i32*, i32*, i32) #1

declare dso_local i32 @luaX_next(%struct.TYPE_11__*) #1

declare dso_local i32* @str_checkname(%struct.TYPE_11__*) #1

declare dso_local i32 @fornum(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @forlist(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @luaX_syntaxerror(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @check_match(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @leaveblock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
