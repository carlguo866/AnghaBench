; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_io.c_io_file_readlen.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_io.c_io_file_readlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i64)* @io_file_readlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_file_readlen(%struct.TYPE_9__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i8* @lj_buf_tmp(%struct.TYPE_9__* %14, i64 %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @fread(i8* %17, i32 1, i64 %18, i32* %19)
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %9, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32* @lj_str_new(%struct.TYPE_9__* %27, i8* %28, i64 %29)
  %31 = call i32 @setstrV(%struct.TYPE_9__* %22, i32 %25, i32* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = call i32 @lj_gc_check(%struct.TYPE_9__* %32)
  %34 = load i64, i64* %9, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %13
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %37, 0
  br label %39

39:                                               ; preds = %36, %13
  %40 = phi i1 [ true, %13 ], [ %38, %36 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %4, align 4
  br label %61

42:                                               ; preds = %3
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @getc(i32* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @ungetc(i32 %45, i32* %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = call %struct.TYPE_10__* @G(%struct.TYPE_9__* %53)
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = call i32 @setstrV(%struct.TYPE_9__* %48, i32 %51, i32* %55)
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @EOF, align 4
  %59 = icmp ne i32 %57, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %42, %39
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i8* @lj_buf_tmp(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @setstrV(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32* @lj_str_new(%struct.TYPE_9__*, i8*, i64) #1

declare dso_local i32 @lj_gc_check(%struct.TYPE_9__*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local %struct.TYPE_10__* @G(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
