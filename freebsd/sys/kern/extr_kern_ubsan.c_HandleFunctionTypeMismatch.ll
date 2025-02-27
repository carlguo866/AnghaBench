; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_HandleFunctionTypeMismatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_HandleFunctionTypeMismatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CFunctionTypeMismatchData = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@LOCATION_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"UBSan: Undefined Behavior in %s, call to function %#lx through pointer to incorrect function type %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.CFunctionTypeMismatchData*, i64)* @HandleFunctionTypeMismatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleFunctionTypeMismatch(i32 %0, %struct.CFunctionTypeMismatchData* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.CFunctionTypeMismatchData*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.CFunctionTypeMismatchData* %1, %struct.CFunctionTypeMismatchData** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* @LOCATION_MAXLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.CFunctionTypeMismatchData*, %struct.CFunctionTypeMismatchData** %5, align 8
  %15 = call i32 @ASSERT(%struct.CFunctionTypeMismatchData* %14)
  %16 = load %struct.CFunctionTypeMismatchData*, %struct.CFunctionTypeMismatchData** %5, align 8
  %17 = getelementptr inbounds %struct.CFunctionTypeMismatchData, %struct.CFunctionTypeMismatchData* %16, i32 0, i32 1
  %18 = call i64 @isAlreadyReported(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %34

21:                                               ; preds = %3
  %22 = load i32, i32* @LOCATION_MAXLEN, align 4
  %23 = load %struct.CFunctionTypeMismatchData*, %struct.CFunctionTypeMismatchData** %5, align 8
  %24 = getelementptr inbounds %struct.CFunctionTypeMismatchData, %struct.CFunctionTypeMismatchData* %23, i32 0, i32 1
  %25 = call i32 @DeserializeLocation(i8* %13, i32 %22, i32* %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.CFunctionTypeMismatchData*, %struct.CFunctionTypeMismatchData** %5, align 8
  %29 = getelementptr inbounds %struct.CFunctionTypeMismatchData, %struct.CFunctionTypeMismatchData* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @Report(i32 %26, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i8* %13, i64 %27, i32 %32)
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %21, %20
  %35 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %35)
  %36 = load i32, i32* %9, align 4
  switch i32 %36, label %38 [
    i32 0, label %37
    i32 1, label %37
  ]

37:                                               ; preds = %34, %34
  ret void

38:                                               ; preds = %34
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(%struct.CFunctionTypeMismatchData*) #2

declare dso_local i64 @isAlreadyReported(i32*) #2

declare dso_local i32 @DeserializeLocation(i8*, i32, i32*) #2

declare dso_local i32 @Report(i32, i8*, i8*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
