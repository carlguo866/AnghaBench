; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sw_fence.c_timer_i915_sw_fence_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sw_fence.c_timer_i915_sw_fence_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_sw_dma_fence_cb_timer = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)* }
%struct.TYPE_6__ = type { i32 }
%struct.timer_list = type { i32 }
%struct.i915_sw_fence = type { i32 }

@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Asynchronous wait on fence %s:%s:%llx timed out (hint:%pS)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@cb = common dso_local global %struct.i915_sw_dma_fence_cb_timer* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @timer_i915_sw_fence_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_i915_sw_fence_wake(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.i915_sw_dma_fence_cb_timer*, align 8
  %4 = alloca %struct.i915_sw_fence*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.i915_sw_dma_fence_cb_timer*, %struct.i915_sw_dma_fence_cb_timer** %3, align 8
  %6 = ptrtoint %struct.i915_sw_dma_fence_cb_timer* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.i915_sw_dma_fence_cb_timer* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.i915_sw_dma_fence_cb_timer* %9, %struct.i915_sw_dma_fence_cb_timer** %3, align 8
  %10 = load %struct.i915_sw_dma_fence_cb_timer*, %struct.i915_sw_dma_fence_cb_timer** %3, align 8
  %11 = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, %struct.i915_sw_dma_fence_cb_timer* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = call %struct.i915_sw_fence* @xchg(i32* %12, i32* null)
  store %struct.i915_sw_fence* %13, %struct.i915_sw_fence** %4, align 8
  %14 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %4, align 8
  %15 = icmp ne %struct.i915_sw_fence* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %54

17:                                               ; preds = %1
  %18 = load %struct.i915_sw_dma_fence_cb_timer*, %struct.i915_sw_dma_fence_cb_timer** %3, align 8
  %19 = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, %struct.i915_sw_dma_fence_cb_timer* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %23, align 8
  %25 = load %struct.i915_sw_dma_fence_cb_timer*, %struct.i915_sw_dma_fence_cb_timer** %3, align 8
  %26 = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, %struct.i915_sw_dma_fence_cb_timer* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = call i32 %24(%struct.TYPE_7__* %27)
  %29 = load %struct.i915_sw_dma_fence_cb_timer*, %struct.i915_sw_dma_fence_cb_timer** %3, align 8
  %30 = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, %struct.i915_sw_dma_fence_cb_timer* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %34, align 8
  %36 = load %struct.i915_sw_dma_fence_cb_timer*, %struct.i915_sw_dma_fence_cb_timer** %3, align 8
  %37 = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, %struct.i915_sw_dma_fence_cb_timer* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = call i32 %35(%struct.TYPE_7__* %38)
  %40 = load %struct.i915_sw_dma_fence_cb_timer*, %struct.i915_sw_dma_fence_cb_timer** %3, align 8
  %41 = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, %struct.i915_sw_dma_fence_cb_timer* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %4, align 8
  %46 = call i32 @i915_sw_fence_debug_hint(%struct.i915_sw_fence* %45)
  %47 = call i32 @pr_notice(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %39, i32 %44, i32 %46)
  %48 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %4, align 8
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  %51 = call i32 @i915_sw_fence_set_error_once(%struct.i915_sw_fence* %48, i32 %50)
  %52 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %4, align 8
  %53 = call i32 @i915_sw_fence_complete(%struct.i915_sw_fence* %52)
  br label %54

54:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.i915_sw_dma_fence_cb_timer* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.i915_sw_fence* @xchg(i32*, i32*) #1

declare dso_local i32 @pr_notice(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @i915_sw_fence_debug_hint(%struct.i915_sw_fence*) #1

declare dso_local i32 @i915_sw_fence_set_error_once(%struct.i915_sw_fence*, i32) #1

declare dso_local i32 @i915_sw_fence_complete(%struct.i915_sw_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
