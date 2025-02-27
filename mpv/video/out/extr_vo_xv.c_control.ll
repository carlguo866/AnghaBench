; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_control.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.xvctx* }
%struct.xvctx = type { i32 }

@VO_TRUE = common dso_local global i32 0, align 4
@VO_EVENT_EXPOSE = common dso_local global i32 0, align 4
@VO_EVENT_RESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, i32, i8*)* @control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control(%struct.vo* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.xvctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.vo*, %struct.vo** %5, align 8
  %12 = getelementptr inbounds %struct.vo, %struct.vo* %11, i32 0, i32 0
  %13 = load %struct.xvctx*, %struct.xvctx** %12, align 8
  store %struct.xvctx* %13, %struct.xvctx** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %25 [
    i32 128, label %15
    i32 129, label %19
  ]

15:                                               ; preds = %3
  %16 = load %struct.vo*, %struct.vo** %5, align 8
  %17 = call i32 @resize(%struct.vo* %16)
  %18 = load i32, i32* @VO_TRUE, align 4
  store i32 %18, i32* %4, align 4
  br label %44

19:                                               ; preds = %3
  %20 = load %struct.vo*, %struct.vo** %5, align 8
  %21 = load %struct.xvctx*, %struct.xvctx** %8, align 8
  %22 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @draw_image(%struct.vo* %20, i32 %23)
  store i32 1, i32* %4, align 4
  br label %44

25:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %26 = load %struct.vo*, %struct.vo** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @vo_x11_control(%struct.vo* %26, i32* %9, i32 %27, i8* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @VO_EVENT_EXPOSE, align 4
  %32 = load i32, i32* @VO_EVENT_RESIZE, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load %struct.vo*, %struct.vo** %5, align 8
  %38 = call i32 @resize(%struct.vo* %37)
  br label %39

39:                                               ; preds = %36, %25
  %40 = load %struct.vo*, %struct.vo** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @vo_event(%struct.vo* %40, i32 %41)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %39, %19, %15
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @resize(%struct.vo*) #1

declare dso_local i32 @draw_image(%struct.vo*, i32) #1

declare dso_local i32 @vo_x11_control(%struct.vo*, i32*, i32, i8*) #1

declare dso_local i32 @vo_event(%struct.vo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
