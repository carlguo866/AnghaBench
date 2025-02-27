; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_whilestat.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_whilestat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }

@TK_DO = common dso_local global i32 0, align 4
@TK_END = common dso_local global i32 0, align 4
@TK_WHILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @whilestat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whilestat(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = call i32 @luaX_next(%struct.TYPE_8__* %12)
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @luaK_getlabel(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = call i32 @cond(%struct.TYPE_8__* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @enterblock(i32* %18, i32* %8, i32 1)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = load i32, i32* @TK_DO, align 4
  %22 = call i32 @checknext(%struct.TYPE_8__* %20, i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = call i32 @block(%struct.TYPE_8__* %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @luaK_jump(i32* %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @luaK_patchlist(i32* %25, i32 %27, i32 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = load i32, i32* @TK_END, align 4
  %32 = load i32, i32* @TK_WHILE, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @check_match(%struct.TYPE_8__* %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @leaveblock(i32* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @luaK_patchtohere(i32* %37, i32 %38)
  ret void
}

declare dso_local i32 @luaX_next(%struct.TYPE_8__*) #1

declare dso_local i32 @luaK_getlabel(i32*) #1

declare dso_local i32 @cond(%struct.TYPE_8__*) #1

declare dso_local i32 @enterblock(i32*, i32*, i32) #1

declare dso_local i32 @checknext(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @block(%struct.TYPE_8__*) #1

declare dso_local i32 @luaK_patchlist(i32*, i32, i32) #1

declare dso_local i32 @luaK_jump(i32*) #1

declare dso_local i32 @check_match(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @leaveblock(i32*) #1

declare dso_local i32 @luaK_patchtohere(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
