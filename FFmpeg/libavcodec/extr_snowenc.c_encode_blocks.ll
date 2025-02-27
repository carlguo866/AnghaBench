; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowenc.c_encode_blocks.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowenc.c_encode_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@FF_ME_ITER = common dso_local global i64 0, align 8
@MB_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"encoded frame too large\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @encode_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_blocks(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FF_ME_ITER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = call i32 @iterative_me(%struct.TYPE_8__* %29)
  br label %31

31:                                               ; preds = %28, %25, %20, %2
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %88, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %91

36:                                               ; preds = %32
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %40, %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MB_SIZE, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* @MB_SIZE, align 4
  %50 = mul nsw i32 %48, %49
  %51 = mul nsw i32 %50, 3
  %52 = icmp slt i32 %45, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %36
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = call i32 @av_log(i32 %56, i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %91

59:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %84, %59
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %60
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @FF_ME_ITER, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70, %64
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @encode_q_branch2(%struct.TYPE_8__* %74, i32 0, i32 %75, i32 %76)
  br label %83

78:                                               ; preds = %70
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @encode_q_branch(%struct.TYPE_8__* %79, i32 0, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %73
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %60

87:                                               ; preds = %60
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %32

91:                                               ; preds = %53, %32
  ret void
}

declare dso_local i32 @iterative_me(%struct.TYPE_8__*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @encode_q_branch2(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @encode_q_branch(%struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
