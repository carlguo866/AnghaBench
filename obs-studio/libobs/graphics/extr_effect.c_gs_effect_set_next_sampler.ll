; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.c_gs_effect_set_next_sampler.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.c_gs_effect_set_next_sampler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"gs_effect_set_next_sampler: invalid param\00", align 1
@GS_SHADER_PARAM_TEXTURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_effect_set_next_sampler(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* @LOG_ERROR, align 4
  %9 = call i32 @blog(i32 %8, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %20

10:                                               ; preds = %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @GS_SHADER_PARAM_TEXTURE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  br label %20

20:                                               ; preds = %7, %16, %10
  ret void
}

declare dso_local i32 @blog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
