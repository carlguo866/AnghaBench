; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_obs_lua_add_main_render_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_obs_lua_add_main_render_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lua_obs_callback = type { i32 }

@is_function = common dso_local global i32 0, align 4
@defer_add_render = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @obs_lua_add_main_render_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obs_lua_add_main_render_callback(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.lua_obs_callback*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* @is_function, align 4
  %7 = call i32 @verify_args1(i32* %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call %struct.lua_obs_callback* @add_lua_obs_callback(i32* %11, i32 1)
  store %struct.lua_obs_callback* %12, %struct.lua_obs_callback** %4, align 8
  %13 = load i32, i32* @defer_add_render, align 4
  %14 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %4, align 8
  %15 = call i32 @defer_call_post(i32 %13, %struct.lua_obs_callback* %14)
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %10, %9
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @verify_args1(i32*, i32) #1

declare dso_local %struct.lua_obs_callback* @add_lua_obs_callback(i32*, i32) #1

declare dso_local i32 @defer_call_post(i32, %struct.lua_obs_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
