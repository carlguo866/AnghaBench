; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-frontend.c_get_scene_collections.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-frontend.c_get_scene_collections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_scene_collections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_scene_collections(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = call i8** (...) @obs_frontend_get_scene_collections()
  store i8** %6, i8*** %3, align 8
  %7 = load i8**, i8*** %3, align 8
  store i8** %7, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @lua_newtable(i32* %8)
  br label %10

10:                                               ; preds = %19, %1
  %11 = load i8**, i8*** %4, align 8
  %12 = icmp ne i8** %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i8**, i8*** %4, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i1 [ false, %10 ], [ %16, %13 ]
  br i1 %18, label %19, label %30

19:                                               ; preds = %17
  %20 = load i32*, i32** %2, align 8
  %21 = load i8**, i8*** %4, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @lua_pushstring(i32* %20, i8* %22)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  %27 = call i32 @lua_rawseti(i32* %24, i32 -2, i32 %26)
  %28 = load i8**, i8*** %4, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %29, i8*** %4, align 8
  br label %10

30:                                               ; preds = %17
  %31 = load i8**, i8*** %3, align 8
  %32 = call i32 @bfree(i8** %31)
  ret i32 1
}

declare dso_local i8** @obs_frontend_get_scene_collections(...) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i32 @bfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
