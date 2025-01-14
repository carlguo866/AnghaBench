; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_win.c_create_ctx.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_win.c_create_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.priv* }
%struct.priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @create_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_ctx(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca %struct.priv*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ra_ctx*
  store %struct.ra_ctx* %6, %struct.ra_ctx** %3, align 8
  %7 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %7, i32 0, i32 0
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %4, align 8
  %10 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %11 = call i32 @create_dc(%struct.ra_ctx* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %16 = call i32 @create_context_wgl_gl3(%struct.ra_ctx* %15)
  %17 = load %struct.priv*, %struct.priv** %4, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %23 = call i32 @create_context_wgl_old(%struct.ra_ctx* %22)
  br label %24

24:                                               ; preds = %21, %14
  %25 = load %struct.priv*, %struct.priv** %4, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wglMakeCurrent(i32 %27, i32* null)
  br label %29

29:                                               ; preds = %24, %13
  ret void
}

declare dso_local i32 @create_dc(%struct.ra_ctx*) #1

declare dso_local i32 @create_context_wgl_gl3(%struct.ra_ctx*) #1

declare dso_local i32 @create_context_wgl_old(%struct.ra_ctx*) #1

declare dso_local i32 @wglMakeCurrent(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
