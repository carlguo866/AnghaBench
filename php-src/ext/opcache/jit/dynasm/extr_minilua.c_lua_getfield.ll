; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_lua_getfield.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_lua_getfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i8*)* @lua_getfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lua_getfield(%struct.TYPE_9__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @index2adr(%struct.TYPE_9__* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @api_checkvalidindex(%struct.TYPE_9__* %12, i32 %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @luaS_new(%struct.TYPE_9__* %16, i8* %17)
  %19 = call i32 @setsvalue(%struct.TYPE_9__* %15, i32* %8, i32 %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @luaV_gettable(%struct.TYPE_9__* %20, i32 %21, i32* %8, i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = call i32 @api_incr_top(%struct.TYPE_9__* %26)
  ret void
}

declare dso_local i32 @index2adr(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @api_checkvalidindex(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @setsvalue(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @luaS_new(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @luaV_gettable(%struct.TYPE_9__*, i32, i32*, i32) #1

declare dso_local i32 @api_incr_top(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
