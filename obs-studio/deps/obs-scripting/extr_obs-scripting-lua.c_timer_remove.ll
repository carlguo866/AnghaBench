; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_timer_remove.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_timer_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lua_obs_callback = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @timer_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer_remove(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.lua_obs_callback*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @is_function(i32* %5, i32 1)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.lua_obs_callback* @find_lua_obs_callback(i32* %10, i32 1)
  store %struct.lua_obs_callback* %11, %struct.lua_obs_callback** %4, align 8
  %12 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %4, align 8
  %13 = icmp ne %struct.lua_obs_callback* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %4, align 8
  %16 = call i32 @remove_lua_obs_callback(%struct.lua_obs_callback* %15)
  br label %17

17:                                               ; preds = %14, %9
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %8
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @is_function(i32*, i32) #1

declare dso_local %struct.lua_obs_callback* @find_lua_obs_callback(i32*, i32) #1

declare dso_local i32 @remove_lua_obs_callback(%struct.lua_obs_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
