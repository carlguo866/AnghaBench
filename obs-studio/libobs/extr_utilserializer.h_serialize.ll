; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_utilserializer.h_serialize.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_utilserializer.h_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serializer = type { i64 (i32, i8*, i64)*, i64 (i32, i8*, i64)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.serializer*, i8*, i64)* @serialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @serialize(%struct.serializer* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.serializer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.serializer* %0, %struct.serializer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.serializer*, %struct.serializer** %5, align 8
  %9 = icmp ne %struct.serializer* %8, null
  br i1 %9, label %10, label %42

10:                                               ; preds = %3
  %11 = load %struct.serializer*, %struct.serializer** %5, align 8
  %12 = getelementptr inbounds %struct.serializer, %struct.serializer* %11, i32 0, i32 0
  %13 = load i64 (i32, i8*, i64)*, i64 (i32, i8*, i64)** %12, align 8
  %14 = icmp ne i64 (i32, i8*, i64)* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load %struct.serializer*, %struct.serializer** %5, align 8
  %17 = getelementptr inbounds %struct.serializer, %struct.serializer* %16, i32 0, i32 0
  %18 = load i64 (i32, i8*, i64)*, i64 (i32, i8*, i64)** %17, align 8
  %19 = load %struct.serializer*, %struct.serializer** %5, align 8
  %20 = getelementptr inbounds %struct.serializer, %struct.serializer* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 %18(i32 %21, i8* %22, i64 %23)
  store i64 %24, i64* %4, align 8
  br label %43

25:                                               ; preds = %10
  %26 = load %struct.serializer*, %struct.serializer** %5, align 8
  %27 = getelementptr inbounds %struct.serializer, %struct.serializer* %26, i32 0, i32 1
  %28 = load i64 (i32, i8*, i64)*, i64 (i32, i8*, i64)** %27, align 8
  %29 = icmp ne i64 (i32, i8*, i64)* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.serializer*, %struct.serializer** %5, align 8
  %32 = getelementptr inbounds %struct.serializer, %struct.serializer* %31, i32 0, i32 1
  %33 = load i64 (i32, i8*, i64)*, i64 (i32, i8*, i64)** %32, align 8
  %34 = load %struct.serializer*, %struct.serializer** %5, align 8
  %35 = getelementptr inbounds %struct.serializer, %struct.serializer* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 %33(i32 %36, i8* %37, i64 %38)
  store i64 %39, i64* %4, align 8
  br label %43

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41, %3
  store i64 0, i64* %4, align 8
  br label %43

43:                                               ; preds = %42, %30, %15
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
