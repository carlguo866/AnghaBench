; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_mali_fbdev_ctx.c_gfx_ctx_mali_fbdev_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_mali_fbdev_ctx.c_gfx_ctx_mali_fbdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"[Mali fbdev]: EGL error: %d.\0A\00", align 1
@EGL_DEFAULT_DISPLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @gfx_ctx_mali_fbdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gfx_ctx_mali_fbdev_init(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i64 @calloc(i32 1, i32 1)
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %19

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %3, align 8
  br label %19

14:                                               ; No predecessors!
  %15 = call i32 (...) @eglGetError()
  %16 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @gfx_ctx_mali_fbdev_destroy(i8* %17)
  store i8* null, i8** %3, align 8
  br label %19

19:                                               ; preds = %14, %12, %11
  %20 = load i8*, i8** %3, align 8
  ret i8* %20
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i32) #1

declare dso_local i32 @eglGetError(...) #1

declare dso_local i32 @gfx_ctx_mali_fbdev_destroy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
