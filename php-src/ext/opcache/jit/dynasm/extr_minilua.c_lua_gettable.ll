; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_lua_gettable.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_lua_gettable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @lua_gettable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lua_gettable(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @index2adr(%struct.TYPE_6__* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @api_checkvalidindex(%struct.TYPE_6__* %9, i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %16, 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %20, 1
  %22 = call i32 @luaV_gettable(%struct.TYPE_6__* %12, i32 %13, i64 %17, i64 %21)
  ret void
}

declare dso_local i32 @index2adr(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @api_checkvalidindex(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @luaV_gettable(%struct.TYPE_6__*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
