; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_init_hotkeys.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_init_hotkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.dstr = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"libobs.show_scene_item.%1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%1\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"libobs.hide_scene_item.%1\00", align 1
@obs = common dso_local global %struct.TYPE_12__* null, align 8
@hotkey_show_sceneitem = common dso_local global i32 0, align 4
@hotkey_hide_sceneitem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*, i8*)* @init_hotkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_hotkeys(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dstr, align 4
  %8 = alloca %struct.dstr, align 4
  %9 = alloca %struct.dstr, align 4
  %10 = alloca %struct.dstr, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = bitcast %struct.dstr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = bitcast %struct.dstr* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = bitcast %struct.dstr* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = bitcast %struct.dstr* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = call i32 @dstr_copy(%struct.dstr* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @dstr_replace(%struct.dstr* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = call i32 @dstr_copy(%struct.dstr* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @dstr_replace(%struct.dstr* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** @obs, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @dstr_copy(%struct.dstr* %9, i8* %24)
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @dstr_replace(%struct.dstr* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** @obs, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @dstr_copy(%struct.dstr* %10, i8* %31)
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @dstr_replace(%struct.dstr* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.dstr, %struct.dstr* %9, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.dstr, %struct.dstr* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.dstr, %struct.dstr* %10, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @hotkey_show_sceneitem, align 4
  %47 = load i32, i32* @hotkey_hide_sceneitem, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = call i32 @obs_hotkey_pair_register_source(i32 %37, i32 %39, i32 %41, i32 %43, i32 %45, i32 %46, i32 %47, %struct.TYPE_10__* %48, %struct.TYPE_10__* %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = call i32 @dstr_free(%struct.dstr* %7)
  %54 = call i32 @dstr_free(%struct.dstr* %8)
  %55 = call i32 @dstr_free(%struct.dstr* %9)
  %56 = call i32 @dstr_free(%struct.dstr* %10)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #2

declare dso_local i32 @dstr_replace(%struct.dstr*, i8*, i8*) #2

declare dso_local i32 @obs_hotkey_pair_register_source(i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__*) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
