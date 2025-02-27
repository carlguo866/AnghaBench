; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_wayland.c_wayland_egl_init.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_wayland.c_wayland_egl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*)* @wayland_egl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wayland_egl_init(%struct.ra_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_ctx*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %3, align 8
  %4 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %5 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @vo_wayland_init(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @vo_wayland_uninit(i32 %12)
  store i32 0, i32* %2, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %16 = call i32 @egl_create_context(%struct.ra_ctx* %15)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %14, %9
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @vo_wayland_init(i32) #1

declare dso_local i32 @vo_wayland_uninit(i32) #1

declare dso_local i32 @egl_create_context(%struct.ra_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
