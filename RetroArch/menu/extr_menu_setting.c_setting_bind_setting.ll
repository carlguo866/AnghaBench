; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_bind_setting.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_bind_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8*, i8*, i8*, i8*, double, double, float, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32*, i32, i64, i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*, i64, i64, i64, i8*, i8*, i32*, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.retro_keybind* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.retro_keybind* }
%struct.retro_keybind = type { i32 }

@MSG_UNKNOWN = common dso_local global i32 0, align 4
@ST_BIND = common dso_local global i32 0, align 4
@setting_bind_action_start = common dso_local global i32 0, align 4
@setting_bind_action_ok = common dso_local global i8* null, align 8
@setting_get_string_representation_st_bind = common dso_local global i32 0, align 4
@ST_NONE = common dso_local global i32 0, align 4
@CMD_EVENT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i8*, i8*, %struct.retro_keybind*, i8*, i8*, %struct.retro_keybind*, i8*, i8*, i8*, i32)* @setting_bind_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setting_bind_setting(%struct.TYPE_11__* noalias sret %0, i8* %1, i8* %2, %struct.retro_keybind* %3, i8* %4, i8* %5, %struct.retro_keybind* %6, i8* %7, i8* %8, i8* %9, i32 %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.retro_keybind*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.retro_keybind*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store %struct.retro_keybind* %3, %struct.retro_keybind** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store %struct.retro_keybind* %6, %struct.retro_keybind** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i8* %9, i8** %20, align 8
  store i32 %10, i32* %21, align 4
  %22 = load i32, i32* @MSG_UNKNOWN, align 4
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 36
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @ST_BIND, align 4
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 35
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 34
  store i64 0, i64* %26, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = load i8*, i8** %18, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** %19, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 3
  store i8* %33, i8** %34, align 8
  %35 = load i8*, i8** %20, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 4
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 33
  store i32* null, i32** %37, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 32
  store i8* %38, i8** %39, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 31
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 30
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 5
  store double 0.000000e+00, double* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 6
  store double 0.000000e+00, double* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 29
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 28
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 27
  store i32* null, i32** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 26
  store i32* null, i32** %48, align 8
  %49 = load i32, i32* @setting_bind_action_start, align 4
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 25
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 24
  store i32* null, i32** %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 23
  store i32* null, i32** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 22
  store i32* null, i32** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 21
  store i32* null, i32** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 20
  store i32* null, i32** %55, align 8
  %56 = load i8*, i8** @setting_bind_action_ok, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 19
  store i8* %56, i8** %57, align 8
  %58 = load i8*, i8** @setting_bind_action_ok, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 18
  store i8* %58, i8** %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 17
  store i32* @setting_get_string_representation_st_bind, i32** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 16
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @ST_NONE, align 4
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 15
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 7
  store float 0.000000e+00, float* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 14
  store i32* null, i32** %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 8
  store i32 0, i32* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 9
  store i32 0, i32* %67, align 8
  %68 = load %struct.retro_keybind*, %struct.retro_keybind** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 13
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store %struct.retro_keybind* %68, %struct.retro_keybind** %71, align 8
  %72 = load %struct.retro_keybind*, %struct.retro_keybind** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 12
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store %struct.retro_keybind* %72, %struct.retro_keybind** %74, align 8
  %75 = load i32, i32* @CMD_EVENT_NONE, align 4
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 11
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 11
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = load i32, i32* %21, align 4
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 10
  store i32 %80, i32* %81, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
