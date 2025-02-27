; ModuleID = '/home/carl/AnghaBench/vlc/modules/access_output/extr_file.c_WritePipe.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access_output/extr_file.c_WritePipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_9__* }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"cannot write: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, %struct.TYPE_9__*)* @WritePipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @WritePipe(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %53, %45, %23, %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = icmp ne %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %76

18:                                               ; preds = %15
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %8, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = call i32 @block_Release(%struct.TYPE_9__* %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %4, align 8
  br label %15

30:                                               ; preds = %18
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @vlc_write(i32 %31, i32 %34, i64 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %30
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EINTR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %15

46:                                               ; preds = %41
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = call i32 @block_ChainRelease(%struct.TYPE_9__* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = load i64, i64* @errno, align 8
  %51 = call i32 @vlc_strerror_c(i64 %50)
  %52 = call i32 @msg_Err(%struct.TYPE_8__* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i64 -1, i64* %7, align 8
  br label %76

53:                                               ; preds = %30
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %7, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ule i64 %57, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %64
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %74, %71
  store i64 %75, i64* %73, align 8
  br label %15

76:                                               ; preds = %46, %15
  %77 = load i64, i64* %7, align 8
  ret i64 %77
}

declare dso_local i32 @block_Release(%struct.TYPE_9__*) #1

declare dso_local i64 @vlc_write(i32, i32, i64) #1

declare dso_local i32 @block_ChainRelease(%struct.TYPE_9__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
