; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/extr_khrn_client.c_client_egl_get_surface.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/extr_khrn_client.c_client_egl_get_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@EGL_BAD_SURFACE = common dso_local global i32 0, align 4
@EGL_BAD_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @client_egl_get_surface(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i64, i64* %6, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i64 @khrn_pointer_map_lookup(i32* %9, i32 %11)
  %13 = inttoptr i64 %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %7, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %16, %3
  %23 = phi i1 [ true, %3 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @vcos_assert(i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @EGL_BAD_SURFACE, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  ret %struct.TYPE_7__* %33
}

declare dso_local i64 @khrn_pointer_map_lookup(i32*, i32) #1

declare dso_local i32 @vcos_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
