; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context.c_ra_gl_ctx_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context.c_ra_gl_ctx_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.priv* }
%struct.priv = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ra_gl_ctx_uninit(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %4 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.priv*, %struct.priv** %12, align 8
  store %struct.priv* %13, %struct.priv** %3, align 8
  %14 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %8
  %19 = load %struct.priv*, %struct.priv** %3, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.priv*, %struct.priv** %3, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 0
  %29 = call i32 @ra_tex_free(i64 %26, i64* %28)
  br label %30

30:                                               ; preds = %23, %18, %8
  %31 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @talloc_free(%struct.TYPE_2__* %33)
  %35 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %35, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %36, align 8
  br label %37

37:                                               ; preds = %30, %1
  %38 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %39 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %38, i32 0, i32 0
  %40 = call i32 @ra_free(i64* %39)
  ret void
}

declare dso_local i32 @ra_tex_free(i64, i64*) #1

declare dso_local i32 @talloc_free(%struct.TYPE_2__*) #1

declare dso_local i32 @ra_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
