; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_get_private_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_get_private_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@obs = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @obs_get_private_data() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %4 = icmp ne %struct.TYPE_4__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %14

6:                                                ; preds = %0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @obs_data_addref(i32* %11)
  %13 = load i32*, i32** %2, align 8
  store i32* %13, i32** %1, align 8
  br label %14

14:                                               ; preds = %6, %5
  %15 = load i32*, i32** %1, align 8
  ret i32* %15
}

declare dso_local i32 @obs_data_addref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
