; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_upsample_layer.c_make_upsample_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_upsample_layer.c_make_upsample_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@UPSAMPLE = common dso_local global i32 0, align 4
@forward_upsample_layer = common dso_local global i32 0, align 4
@backward_upsample_layer = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"downsample         %2dx  %4d x%4d x%4d   ->  %4d x%4d x%4d\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"upsample           %2dx  %4d x%4d x%4d   ->  %4d x%4d x%4d\0A\00", align 1
@backward_upsample_layer_gpu = common dso_local global i32 0, align 4
@forward_upsample_layer_gpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_upsample_layer(%struct.TYPE_3__* noalias sret %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 %5, i32* %11, align 4
  %12 = bitcast %struct.TYPE_3__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 104, i1 false)
  %13 = load i32, i32* @UPSAMPLE, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 19
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %9, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %10, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %11, align 4
  %25 = mul nsw i32 %23, %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %11, align 4
  %29 = mul nsw i32 %27, %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %6
  %36 = load i32, i32* %11, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %11, align 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %11, align 4
  %41 = sdiv i32 %39, %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sdiv i32 %43, %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %35, %6
  %48 = load i32, i32* %11, align 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 8
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %51, %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %54, %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 9
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %60, %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %63, %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 10
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 9
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 %69, %70
  %72 = call i8* @calloc(i32 %71, i32 4)
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 13
  store i8* %72, i8** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = mul nsw i32 %75, %76
  %78 = call i8* @calloc(i32 %77, i32 4)
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 11
  store i8* %78, i8** %79, align 8
  %80 = load i32, i32* @forward_upsample_layer, align 4
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 18
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* @backward_upsample_layer, align 4
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 17
  store i32 %82, i32* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %47
  %88 = load i32, i32* @stderr, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @fprintf(i32 %88, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90, i32 %91, i32 %92, i32 %94, i32 %96, i32 %98)
  br label %113

100:                                              ; preds = %47
  %101 = load i32, i32* @stderr, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %10, align 4
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @fprintf(i32 %101, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %103, i32 %104, i32 %105, i32 %107, i32 %109, i32 %111)
  br label %113

113:                                              ; preds = %100, %87
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @calloc(i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
