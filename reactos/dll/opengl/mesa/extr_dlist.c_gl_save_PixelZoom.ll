; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_gl_save_PixelZoom.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_gl_save_PixelZoom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, i8*, i8*)* }
%struct.TYPE_9__ = type { i8* }

@OPCODE_PIXEL_ZOOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_save_PixelZoom(%struct.TYPE_10__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = load i32, i32* @OPCODE_PIXEL_ZOOM, align 4
  %10 = call %struct.TYPE_9__* @alloc_instruction(%struct.TYPE_10__* %8, i32 %9, i32 2)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i64 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i8* %14, i8** %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 2
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  br label %22

22:                                               ; preds = %13, %3
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_10__*, i8*, i8*)*, i32 (%struct.TYPE_10__*, i8*, i8*)** %30, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 %31(%struct.TYPE_10__* %32, i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %27, %22
  ret void
}

declare dso_local %struct.TYPE_9__* @alloc_instruction(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
