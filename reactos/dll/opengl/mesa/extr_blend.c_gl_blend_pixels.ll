; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_blend.c_gl_blend_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_blend.c_gl_blend_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* }

@PB_SIZE = common dso_local global i32 0, align 4
@ALPHABUF_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_blend_pixels(%struct.TYPE_8__* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %24 = load i32, i32* @PB_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %19, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %20, align 8
  %28 = load i32, i32* @PB_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %21, align 8
  %31 = load i32, i32* @PB_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %22, align 8
  %34 = load i32, i32* @PB_SIZE, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %23, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_8__*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_8__*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*)** %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load i32*, i32** %18, align 8
  %46 = call i32 %40(%struct.TYPE_8__* %41, i32 %42, i32* %43, i32* %44, i32* %27, i32* %30, i32* %33, i32* %36, i32* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ALPHABUF_BIT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %9
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i32*, i32** %18, align 8
  %59 = call i32 @gl_read_alpha_pixels(%struct.TYPE_8__* %54, i32 %55, i32* %56, i32* %57, i32* %36, i32* %58)
  br label %60

60:                                               ; preds = %53, %9
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32*, i32** %18, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = load i32*, i32** %16, align 8
  %67 = load i32*, i32** %17, align 8
  %68 = call i32 @do_blend(%struct.TYPE_8__* %61, i32 %62, i32* %63, i32* %64, i32* %65, i32* %66, i32* %67, i32* %27, i32* %30, i32* %33, i32* %36)
  %69 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %69)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gl_read_alpha_pixels(%struct.TYPE_8__*, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @do_blend(%struct.TYPE_8__*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
