; ModuleID = '/home/carl/AnghaBench/disque/src/extr_job.c_compareNodeIDsByJob.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_job.c_compareNodeIDsByJob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8* }

@CLUSTER_NAMELEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compareNodeIDsByJob(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %11 = load i32, i32* @CLUSTER_NAMELEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* @CLUSTER_NAMELEN, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CLUSTER_NAMELEN, align 4
  %22 = call i32 @memcpy(i8* %14, i32 %20, i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CLUSTER_NAMELEN, align 4
  %27 = call i32 @memcpy(i8* %17, i32 %25, i32 %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %67, %3
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @CLUSTER_NAMELEN, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %28
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = srem i32 %36, 24
  %38 = add nsw i32 11, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %14, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = xor i32 %47, %42
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %45, align 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = srem i32 %53, 24
  %55 = add nsw i32 11, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %17, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = xor i32 %64, %59
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %62, align 1
  br label %67

67:                                               ; preds = %32
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %28

70:                                               ; preds = %28
  %71 = load i32, i32* @CLUSTER_NAMELEN, align 4
  %72 = call i32 @memcmp(i8* %14, i8* %17, i32 %71)
  %73 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %73)
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
