; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_script_set_property_native.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_script_set_property_native.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_ctx = type { i32 }
%struct.mpv_node = type { i32 }

@MPV_FORMAT_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_set_property_native to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_set_property_native(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.script_ctx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mpv_node, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call %struct.script_ctx* @get_ctx(i32* %8)
  store %struct.script_ctx* %9, %struct.script_ctx** %3, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i8* @luaL_checkstring(i32* %10, i32 1)
  store i8* %11, i8** %4, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i8* @mp_lua_PITA(i32* %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @makenode(i8* %14, %struct.mpv_node* %5, i32* %15, i32 2)
  %17 = load %struct.script_ctx*, %struct.script_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @MPV_FORMAT_NODE, align 4
  %22 = call i32 @mpv_set_property(i32 %19, i8* %20, i32 %21, %struct.mpv_node* %5)
  store i32 %22, i32* %7, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @talloc_free_children(i8* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @check_error(i32* %25, i32 %26)
  ret i32 %27
}

declare dso_local %struct.script_ctx* @get_ctx(i32*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i8* @mp_lua_PITA(i32*) #1

declare dso_local i32 @makenode(i8*, %struct.mpv_node*, i32*, i32) #1

declare dso_local i32 @mpv_set_property(i32, i8*, i32, %struct.mpv_node*) #1

declare dso_local i32 @talloc_free_children(i8*) #1

declare dso_local i32 @check_error(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
