; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_load_binding.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_load_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@INTERACT_SHIFT_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@INTERACT_CONTROL_KEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"alt\00", align 1
@INTERACT_ALT_KEY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@INTERACT_COMMAND_KEY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@OBS_KEY_NONE = common dso_local global i64 0, align 8
@OBS_KEY_LAST_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @load_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_binding(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  br label %57

13:                                               ; preds = %9
  %14 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @INTERACT_SHIFT_KEY, align 4
  %19 = call i32 @load_modifier(i32* %16, i32* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @INTERACT_CONTROL_KEY, align 4
  %23 = call i32 @load_modifier(i32* %20, i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @INTERACT_ALT_KEY, align 4
  %27 = call i32 @load_modifier(i32* %24, i32* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @INTERACT_COMMAND_KEY, align 4
  %31 = call i32 @load_modifier(i32* %28, i32* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @obs_data_get_string(i32* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %34 = call i64 @obs_key_from_name(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %13
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @OBS_KEY_NONE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @OBS_KEY_LAST_VALUE, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %38
  br label %57

49:                                               ; preds = %43, %13
  %50 = load i32*, i32** %3, align 8
  %51 = bitcast %struct.TYPE_3__* %5 to { i64, i64 }*
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %51, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @create_binding(i32* %50, i64 %53, i64 %55)
  br label %57

57:                                               ; preds = %49, %48, %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @load_modifier(i32*, i32*, i8*, i32) #2

declare dso_local i64 @obs_key_from_name(i32) #2

declare dso_local i32 @obs_data_get_string(i32*, i8*) #2

declare dso_local i32 @create_binding(i32*, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
