; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_ldblib.c_db_setlocal.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_ldblib.c_db_setlocal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"level out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @db_setlocal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_setlocal(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @getthread(i32* %10, i32* %4)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i64 @luaL_checkinteger(i32* %12, i32 %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 2
  %20 = call i64 @luaL_checkinteger(i32* %17, i32 %19)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @lua_getstack(i32* %22, i32 %23, i32* %7)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @luaL_argerror(i32* %27, i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %2, align 4
  br label %58

31:                                               ; preds = %1
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 3
  %35 = call i32 @luaL_checkany(i32* %32, i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 3
  %39 = call i32 @lua_settop(i32* %36, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @checkstack(i32* %40, i32* %41, i32 1)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @lua_xmove(i32* %43, i32* %44, i32 1)
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i8* @lua_setlocal(i32* %46, i32* %7, i32 %47)
  store i8* %48, i8** %5, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %31
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @lua_pop(i32* %52, i32 1)
  br label %54

54:                                               ; preds = %51, %31
  %55 = load i32*, i32** %3, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @lua_pushstring(i32* %55, i8* %56)
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %26
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32* @getthread(i32*, i32*) #1

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @lua_getstack(i32*, i32, i32*) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @luaL_checkany(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @checkstack(i32*, i32*, i32) #1

declare dso_local i32 @lua_xmove(i32*, i32*, i32) #1

declare dso_local i8* @lua_setlocal(i32*, i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
