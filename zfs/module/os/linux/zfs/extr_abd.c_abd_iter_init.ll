; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_abd.c_abd_iter_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_abd.c_abd_iter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abd_iter = type { i32*, i32, i64, i64, i32*, i32* }
%struct.TYPE_2__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.abd_iter*, i32*, i32)* @abd_iter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abd_iter_init(%struct.abd_iter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.abd_iter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__, align 8
  %8 = alloca %struct.TYPE_2__, align 8
  store %struct.abd_iter* %0, %struct.abd_iter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @abd_verify(i32* %9)
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.abd_iter*, %struct.abd_iter** %4, align 8
  %13 = getelementptr inbounds %struct.abd_iter, %struct.abd_iter* %12, i32 0, i32 5
  store i32* %11, i32** %13, align 8
  %14 = load %struct.abd_iter*, %struct.abd_iter** %4, align 8
  %15 = getelementptr inbounds %struct.abd_iter, %struct.abd_iter* %14, i32 0, i32 4
  store i32* null, i32** %15, align 8
  %16 = load %struct.abd_iter*, %struct.abd_iter** %4, align 8
  %17 = getelementptr inbounds %struct.abd_iter, %struct.abd_iter* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.abd_iter*, %struct.abd_iter** %4, align 8
  %19 = getelementptr inbounds %struct.abd_iter, %struct.abd_iter* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @abd_is_linear(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.abd_iter*, %struct.abd_iter** %4, align 8
  %25 = getelementptr inbounds %struct.abd_iter, %struct.abd_iter* %24, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = load %struct.abd_iter*, %struct.abd_iter** %4, align 8
  %27 = getelementptr inbounds %struct.abd_iter, %struct.abd_iter* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  br label %51

28:                                               ; preds = %3
  %29 = load i32*, i32** %5, align 8
  %30 = call { i32*, i32 } @ABD_SCATTER(i32* %29)
  %31 = bitcast %struct.TYPE_2__* %7 to { i32*, i32 }*
  %32 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %31, i32 0, i32 0
  %33 = extractvalue { i32*, i32 } %30, 0
  store i32* %33, i32** %32, align 8
  %34 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %31, i32 0, i32 1
  %35 = extractvalue { i32*, i32 } %30, 1
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.abd_iter*, %struct.abd_iter** %4, align 8
  %39 = getelementptr inbounds %struct.abd_iter, %struct.abd_iter* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call { i32*, i32 } @ABD_SCATTER(i32* %40)
  %42 = bitcast %struct.TYPE_2__* %8 to { i32*, i32 }*
  %43 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %42, i32 0, i32 0
  %44 = extractvalue { i32*, i32 } %41, 0
  store i32* %44, i32** %43, align 8
  %45 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %42, i32 0, i32 1
  %46 = extractvalue { i32*, i32 } %41, 1
  store i32 %46, i32* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.abd_iter*, %struct.abd_iter** %4, align 8
  %50 = getelementptr inbounds %struct.abd_iter, %struct.abd_iter* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  br label %51

51:                                               ; preds = %28, %23
  ret void
}

declare dso_local i32 @abd_verify(i32*) #1

declare dso_local i64 @abd_is_linear(i32*) #1

declare dso_local { i32*, i32 } @ABD_SCATTER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
