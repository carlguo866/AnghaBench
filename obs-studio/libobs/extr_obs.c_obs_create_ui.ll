; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_create_ui.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_create_ui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_modeless_ui = type { i8* (i8*, i8*)* }

@obs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @obs_create_ui(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.obs_modeless_ui*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* @obs, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %33

16:                                               ; preds = %5
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call %struct.obs_modeless_ui* @get_modeless_ui_callback(i8* %17, i8* %18, i8* %19)
  store %struct.obs_modeless_ui* %20, %struct.obs_modeless_ui** %12, align 8
  %21 = load %struct.obs_modeless_ui*, %struct.obs_modeless_ui** %12, align 8
  %22 = icmp ne %struct.obs_modeless_ui* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.obs_modeless_ui*, %struct.obs_modeless_ui** %12, align 8
  %25 = getelementptr inbounds %struct.obs_modeless_ui, %struct.obs_modeless_ui* %24, i32 0, i32 0
  %26 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %25, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i8* %26(i8* %27, i8* %28)
  br label %31

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30, %23
  %32 = phi i8* [ %29, %23 ], [ null, %30 ]
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %31, %15
  %34 = load i8*, i8** %6, align 8
  ret i8* %34
}

declare dso_local %struct.obs_modeless_ui* @get_modeless_ui_callback(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
