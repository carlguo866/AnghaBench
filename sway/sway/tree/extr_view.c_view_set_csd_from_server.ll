; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_set_csd_from_server.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_set_csd_from_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Telling view %p to set CSD to %i\00", align 1
@WLR_XDG_TOPLEVEL_DECORATION_V1_MODE_CLIENT_SIDE = common dso_local global i32 0, align 4
@WLR_XDG_TOPLEVEL_DECORATION_V1_MODE_SERVER_SIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @view_set_csd_from_server(%struct.sway_view* %0, i32 %1) #0 {
  %3 = alloca %struct.sway_view*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sway_view* %0, %struct.sway_view** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @SWAY_DEBUG, align 4
  %7 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @sway_log(i32 %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.sway_view* %7, i32 %8)
  %10 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %11 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @WLR_XDG_TOPLEVEL_DECORATION_V1_MODE_CLIENT_SIDE, align 4
  br label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @WLR_XDG_TOPLEVEL_DECORATION_V1_MODE_SERVER_SIDE, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %5, align 4
  %23 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %24 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @wlr_xdg_toplevel_decoration_v1_set_mode(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %21, %2
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %33 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  ret void
}

declare dso_local i32 @sway_log(i32, i8*, %struct.sway_view*, i32) #1

declare dso_local i32 @wlr_xdg_toplevel_decoration_v1_set_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
