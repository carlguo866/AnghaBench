; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_intr_machdep.c_intr_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_intr_machdep.c_intr_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8*, i32* }

@MAXCOMLEN = common dso_local global i32 0, align 4
@intr_vectors = common dso_local global %struct.TYPE_2__* null, align 8
@intr_handlers = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [10 x i8] c"pil%d: %s\00", align 1
@pil_names = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intr_setup(i32 %0, i32* %1, i32 %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i32, i32* @MAXCOMLEN, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = call i32 (...) @intr_disable()
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %47

22:                                               ; preds = %5
  %23 = load i32*, i32** %9, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intr_vectors, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i32* %23, i32** %28, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intr_vectors, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i8* %29, i8** %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intr_vectors, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %35, i32* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intr_vectors, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %41, i32* %46, align 4
  br label %47

47:                                               ; preds = %22, %5
  %48 = load i32*, i32** %7, align 8
  %49 = load i32**, i32*** @intr_handlers, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  store i32* %48, i32** %52, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @intr_restore(i32 %53)
  %55 = load i32, i32* @MAXCOMLEN, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* %6, align 4
  %58 = load i8**, i8*** @pil_names, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @snprintf(i8* %18, i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %57, i8* %62)
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @intrcnt_updatename(i32 %64, i8* %18, i32 1)
  %66 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %66)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @intr_disable(...) #2

declare dso_local i32 @intr_restore(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #2

declare dso_local i32 @intrcnt_updatename(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
