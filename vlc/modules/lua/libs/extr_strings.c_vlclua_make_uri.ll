; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_strings.c_vlclua_make_uri.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_strings.c_vlclua_make_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_make_uri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_make_uri(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i8* @luaL_checkstring(i32* %6, i32 1)
  store i8* %7, i8** %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i8* @luaL_optstring(i32* %8, i32 2, i32* null)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32* @strstr(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @vlc_path2uri(i8* %14, i8* %15)
  store i8* %16, i8** %5, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @lua_pushstring(i32* %17, i8* %18)
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @free(i8* %20)
  br label %26

22:                                               ; preds = %1
  %23 = load i32*, i32** %2, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @lua_pushstring(i32* %23, i8* %24)
  br label %26

26:                                               ; preds = %22, %13
  ret i32 1
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i8* @luaL_optstring(i32*, i32, i32*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i8* @vlc_path2uri(i8*, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
