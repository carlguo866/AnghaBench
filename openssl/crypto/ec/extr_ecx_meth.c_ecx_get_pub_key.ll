; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecx_meth.c_ecx_get_pub_key.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecx_meth.c_ecx_get_pub_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i64*)* @ecx_get_pub_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecx_get_pub_key(%struct.TYPE_8__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @KEYLENID(i32 %20)
  %22 = load i64*, i64** %7, align 8
  store i64 %21, i64* %22, align 8
  store i32 1, i32* %4, align 4
  br label %52

23:                                               ; preds = %3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = icmp eq %struct.TYPE_9__* %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @KEYLENID(i32 %33)
  %35 = icmp ult i64 %28, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26, %23
  store i32 0, i32* %4, align 4
  br label %52

37:                                               ; preds = %26
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @KEYLENID(i32 %42)
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @memcpy(i8* %45, i32 %48, i64 %50)
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %37, %36, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @KEYLENID(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
