; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_lsaveproto.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_lsaveproto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sproto = type { i32 }

@MAX_GLOBALSPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid global slot index %d\00", align 1
@G_sproto = common dso_local global %struct.sproto** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lsaveproto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsaveproto(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sproto*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.sproto* @lua_touserdata(i32* %6, i32 1)
  store %struct.sproto* %7, %struct.sproto** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @luaL_optinteger(i32* %8, i32 2, i32 0)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MAX_GLOBALSPROTO, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12, %1
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @luaL_error(i32* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %2, align 4
  br label %26

20:                                               ; preds = %12
  %21 = load %struct.sproto*, %struct.sproto** %4, align 8
  %22 = load %struct.sproto**, %struct.sproto*** @G_sproto, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.sproto*, %struct.sproto** %22, i64 %24
  store %struct.sproto* %21, %struct.sproto** %25, align 8
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %20, %16
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.sproto* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
