; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_encode_bson.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_encode_bson.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bson = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"__pairs\00", align 1
@LUA_TNIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @encode_bson to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_bson(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.bson*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.bson* @lua_touserdata(i32* %5, i32 2)
  store %struct.bson* %6, %struct.bson** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_settop(i32* %7, i32 1)
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @luaL_getmetafield(i32* %9, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* @LUA_TNIL, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = load %struct.bson*, %struct.bson** %3, align 8
  %16 = call i32 @pack_meta_dict(i32* %14, %struct.bson* %15, i32 0)
  br label %21

17:                                               ; preds = %1
  %18 = load i32*, i32** %2, align 8
  %19 = load %struct.bson*, %struct.bson** %3, align 8
  %20 = call i32 @pack_simple_dict(i32* %18, %struct.bson* %19, i32 0)
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i32*, i32** %2, align 8
  %23 = load %struct.bson*, %struct.bson** %3, align 8
  %24 = getelementptr inbounds %struct.bson, %struct.bson* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @lua_newuserdata(i32* %22, i32 %25)
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.bson*, %struct.bson** %3, align 8
  %29 = getelementptr inbounds %struct.bson, %struct.bson* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bson*, %struct.bson** %3, align 8
  %32 = getelementptr inbounds %struct.bson, %struct.bson* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i8* %27, i32 %30, i32 %33)
  ret i32 1
}

declare dso_local %struct.bson* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i64 @luaL_getmetafield(i32*, i32, i8*) #1

declare dso_local i32 @pack_meta_dict(i32*, %struct.bson*, i32) #1

declare dso_local i32 @pack_simple_dict(i32*, %struct.bson*, i32) #1

declare dso_local i8* @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
