; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_get_output_by_name.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_get_output_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@obs = common dso_local global %struct.TYPE_4__* null, align 8
@obs_output_addref_safe_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @obs_get_output_by_name(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %5 = icmp ne %struct.TYPE_4__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %17

7:                                                ; preds = %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i8*, i8** %3, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* @obs_output_addref_safe_, align 4
  %16 = call i32* @get_context_by_name(i32* %10, i8* %11, i32* %14, i32 %15)
  store i32* %16, i32** %2, align 8
  br label %17

17:                                               ; preds = %7, %6
  %18 = load i32*, i32** %2, align 8
  ret i32* %18
}

declare dso_local i32* @get_context_by_name(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
