; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_unmanaged_handle_commit.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_unmanaged_handle_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_xwayland_unmanaged = type { i64, i64, %struct.wlr_xwayland_surface* }
%struct.wlr_xwayland_surface = type { i64, i64, i32 }
%struct.wl_listener = type { i32 }

@commit = common dso_local global i32 0, align 4
@surface = common dso_local global %struct.sway_xwayland_unmanaged* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @unmanaged_handle_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmanaged_handle_commit(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_xwayland_unmanaged*, align 8
  %6 = alloca %struct.wlr_xwayland_surface*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %8 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %9 = ptrtoint %struct.sway_xwayland_unmanaged* %8 to i32
  %10 = load i32, i32* @commit, align 4
  %11 = call %struct.sway_xwayland_unmanaged* @wl_container_of(%struct.wl_listener* %7, i32 %9, i32 %10)
  store %struct.sway_xwayland_unmanaged* %11, %struct.sway_xwayland_unmanaged** %5, align 8
  %12 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %13 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %12, i32 0, i32 2
  %14 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %13, align 8
  store %struct.wlr_xwayland_surface* %14, %struct.wlr_xwayland_surface** %6, align 8
  %15 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %16 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %19 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %2
  %23 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %24 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %27 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %22, %2
  %31 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %32 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %35 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %38 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @desktop_damage_surface(i32 %33, i64 %36, i64 %39, i32 1)
  %41 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %42 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %45 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %47 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %50 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %52 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %55 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %58 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @desktop_damage_surface(i32 %53, i64 %56, i64 %59, i32 1)
  br label %72

61:                                               ; preds = %22
  %62 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %63 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %66 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %69 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @desktop_damage_surface(i32 %64, i64 %67, i64 %70, i32 0)
  br label %72

72:                                               ; preds = %61, %30
  ret void
}

declare dso_local %struct.sway_xwayland_unmanaged* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @desktop_damage_surface(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
