; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_NewIkeCrypto.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_NewIkeCrypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8*, i64*, i32, i64 }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @NewIkeCrypto(%struct.TYPE_7__* %0, i64 %1, i8* %2, i64* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = icmp eq %struct.TYPE_7__* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %6
  %19 = load i8*, i8** %10, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i64*, i64** %11, align 8
  %23 = icmp eq i64* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %6
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  br label %67

25:                                               ; preds = %21
  %26 = call %struct.TYPE_8__* @ZeroMalloc(i32 40)
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %14, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  store i64 0, i64* %15, align 8
  br label %33

33:                                               ; preds = %48, %25
  %34 = load i64, i64* %15, align 8
  %35 = load i64, i64* %12, align 8
  %36 = call i64 @MIN(i64 %35, i32 16)
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load i64*, i64** %11, align 8
  %40 = load i64, i64* %15, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %15, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  store i64 %42, i64* %47, align 8
  br label %48

48:                                               ; preds = %38
  %49 = load i64, i64* %15, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %15, align 8
  br label %33

51:                                               ; preds = %33
  %52 = load i64, i64* %12, align 8
  %53 = icmp uge i64 %52, 2
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i64, i64* %13, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %65 = call i32 @Add(i32 %63, %struct.TYPE_8__* %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %7, align 8
  br label %67

67:                                               ; preds = %57, %24
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %68
}

declare dso_local %struct.TYPE_8__* @ZeroMalloc(i32) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @Add(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
