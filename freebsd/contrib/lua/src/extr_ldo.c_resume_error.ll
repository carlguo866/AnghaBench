; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_ldo.c_resume_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_ldo.c_resume_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@LUA_ERRRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32)* @resume_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resume_error(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @luaS_new(%struct.TYPE_7__* %16, i8* %17)
  %19 = call i32 @setsvalue2s(%struct.TYPE_7__* %12, i32 %15, i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = call i32 @api_incr_top(%struct.TYPE_7__* %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = call i32 @lua_unlock(%struct.TYPE_7__* %22)
  %24 = load i32, i32* @LUA_ERRRUN, align 4
  ret i32 %24
}

declare dso_local i32 @setsvalue2s(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @luaS_new(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @api_incr_top(%struct.TYPE_7__*) #1

declare dso_local i32 @lua_unlock(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
