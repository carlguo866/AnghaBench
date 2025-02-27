; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/algs/aes/extr_aes_impl.c_aes_init_keysched.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/algs/aes/extr_aes_impl.c_aes_init_keysched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_5__*, i32*, i32)*, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__* }
%union.anon = type { [8 x i32] }

@AES_32BIT_KS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aes_init_keysched(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.anon, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = call %struct.TYPE_6__* (...) @aes_impl_get_ops()
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %8, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %26 [
    i32 128, label %17
    i32 192, label %20
    i32 256, label %23
  ]

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 10, i32* %19, align 8
  br label %27

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 12, i32* %22, align 8
  br label %27

23:                                               ; preds = %3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 14, i32* %25, align 8
  br label %27

26:                                               ; preds = %3
  br label %105

27:                                               ; preds = %23, %20, %17
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @CRYPTO_BITS2BYTES(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %66, label %34

34:                                               ; preds = %27
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @IS_P2ALIGNED(i32* %35, i32 4)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %53, %38
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = bitcast %union.anon* %12 to [4 x i32]*
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i64 0, i64 %51
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 8
  store i32 %57, i32* %11, align 4
  br label %39

58:                                               ; preds = %39
  br label %65

59:                                               ; preds = %34
  %60 = load i32*, i32** %4, align 8
  %61 = bitcast %union.anon* %12 to [8 x i32]*
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %61, i64 0, i64 0
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @bcopy(i32* %60, i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %58
  br label %90

66:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %84, %66
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = bitcast i32* %75 to i8*
  %77 = bitcast i8* %76 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @htonl(i32 %78)
  %80 = bitcast %union.anon* %12 to [8 x i32]*
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %80, i64 0, i64 %82
  store i32 %79, i32* %83, align 4
  br label %84

84:                                               ; preds = %71
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 4
  store i32 %88, i32* %11, align 4
  br label %67

89:                                               ; preds = %67
  br label %90

90:                                               ; preds = %89, %65
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32 (%struct.TYPE_5__*, i32*, i32)*, i32 (%struct.TYPE_5__*, i32*, i32)** %92, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %95 = bitcast %union.anon* %12 to [8 x i32]*
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %95, i64 0, i64 0
  %97 = load i32, i32* %5, align 4
  %98 = call i32 %93(%struct.TYPE_5__* %94, i32* %96, i32 %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  store %struct.TYPE_6__* %99, %struct.TYPE_6__** %101, align 8
  %102 = load i32, i32* @AES_32BIT_KS, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %90, %26
  ret void
}

declare dso_local %struct.TYPE_6__* @aes_impl_get_ops(...) #1

declare dso_local i32 @CRYPTO_BITS2BYTES(i32) #1

declare dso_local i64 @IS_P2ALIGNED(i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
