; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/lua/extr_testlib.c_db_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/lua/extr_testlib.c_db_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"RarchDB.DB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @db_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_new(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i8* null, i8** %4, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i8* @luaL_checkstring(i32* %6, i32 -1)
  store i8* %7, i8** %4, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32* @lua_newuserdata(i32* %8, i32 4)
  store i32* %9, i32** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @libretrodb_open(i8* %10, i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @luaL_getmetatable(i32* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @lua_setmetatable(i32* %17, i32 -2)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @lua_pushnil(i32* %19)
  br label %31

21:                                               ; preds = %1
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @lua_pop(i32* %22, i32 1)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @lua_pushnil(i32* %24)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 0, %27
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 @lua_pushstring(i32* %26, i32 %29)
  br label %31

31:                                               ; preds = %21, %14
  ret i32 2
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32* @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @libretrodb_open(i8*, i32*) #1

declare dso_local i32 @luaL_getmetatable(i32*, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
