; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetMisc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetMisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64, i32 }

@GX_MT_XF_FLUSH = common dso_local global i64 0, align 8
@__gx = common dso_local global %struct.TYPE_2__* null, align 8
@GX_MT_DL_SAVE_CTX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_SetMisc(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @GX_MT_XF_FLUSH, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  store i64 %10, i64* %12, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @cntlzw(i64 %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @_SHIFTR(i64 %17, i32 5, i32 16)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %9
  br label %44

28:                                               ; preds = %9
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, 8
  store i32 %32, i32* %30, align 4
  br label %43

33:                                               ; preds = %2
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @GX_MT_DL_SAVE_CTX, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i64, i64* %4, align 8
  %39 = and i64 %38, 255
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %33
  br label %43

43:                                               ; preds = %42, %28
  br label %44

44:                                               ; preds = %43, %27
  ret void
}

declare dso_local i64 @cntlzw(i64) #1

declare dso_local i32 @_SHIFTR(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
