; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_GetTexEnviv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_GetTexEnviv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32 }

@GL_TEXTURE_ENV = common dso_local global i64 0, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"glGetTexEnvfv(target)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"glGetTexEnvfv(pname)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_GetTexEnviv(%struct.TYPE_6__* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @GL_TEXTURE_ENV, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = load i32, i32* @GL_INVALID_ENUM, align 4
  %15 = call i32 @gl_error(%struct.TYPE_6__* %13, i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %65

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  switch i64 %17, label %61 [
    i64 128, label %18
    i64 129, label %24
  ]

18:                                               ; preds = %16
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %8, align 8
  store i32 %22, i32* %23, align 4
  br label %65

24:                                               ; preds = %16
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @FLOAT_TO_INT(i32 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @FLOAT_TO_INT(i32 %39)
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @FLOAT_TO_INT(i32 %48)
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @FLOAT_TO_INT(i32 %57)
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  store i32 %58, i32* %60, align 4
  br label %65

61:                                               ; preds = %16
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = load i32, i32* @GL_INVALID_ENUM, align 4
  %64 = call i32 @gl_error(%struct.TYPE_6__* %62, i32 %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %12, %61, %24, %18
  ret void
}

declare dso_local i32 @gl_error(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @FLOAT_TO_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
