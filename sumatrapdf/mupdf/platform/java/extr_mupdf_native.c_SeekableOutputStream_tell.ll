; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_SeekableOutputStream_tell.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_SeekableOutputStream_tell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 (%struct.TYPE_8__**)*, i32 (%struct.TYPE_8__**, i32, i32)* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"cannot attach to JVM in SeekableOutputStream_tell\00", align 1
@mid_SeekableStream_position = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @SeekableOutputStream_tell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SeekableOutputStream_tell(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call %struct.TYPE_8__** @jni_attach_thread(i32* %11, i32* %7)
  store %struct.TYPE_8__** %12, %struct.TYPE_8__*** %6, align 8
  %13 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %14 = icmp eq %struct.TYPE_8__** %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %18 = call i32 @fz_throw(i32* %16, i32 %17, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32 (%struct.TYPE_8__**, i32, i32)*, i32 (%struct.TYPE_8__**, i32, i32)** %22, align 8
  %24 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @mid_SeekableStream_position, align 4
  %29 = call i32 %23(%struct.TYPE_8__** %24, i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64 (%struct.TYPE_8__**)*, i64 (%struct.TYPE_8__**)** %32, align 8
  %34 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %35 = call i64 %33(%struct.TYPE_8__** %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %19
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @jni_detach_thread(i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %42 = call i32 @fz_throw_java(i32* %40, %struct.TYPE_8__** %41)
  br label %43

43:                                               ; preds = %37, %19
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @jni_detach_thread(i32 %44)
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_8__** @jni_attach_thread(i32*, i32*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @jni_detach_thread(i32) #1

declare dso_local i32 @fz_throw_java(i32*, %struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
