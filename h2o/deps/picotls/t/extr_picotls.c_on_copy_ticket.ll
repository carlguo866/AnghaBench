; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_on_copy_ticket.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_on_copy_ticket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, %struct.TYPE_7__*, i64, i32)* @on_copy_ticket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_copy_ticket(i32* %0, i32* %1, i32 %2, %struct.TYPE_7__* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = bitcast %struct.TYPE_6__* %8 to { i64, i32 }*
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  store i64 %4, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  store i32 %5, i32* %16, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %12, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @ptls_buffer_reserve(%struct.TYPE_7__* %17, i64 %19)
  store i32 %20, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %7, align 4
  br label %43

24:                                               ; preds = %6
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @memcpy(i64 %31, i32 %33, i64 %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, %38
  store i64 %42, i64* %40, align 8
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %24, %22
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @ptls_buffer_reserve(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
