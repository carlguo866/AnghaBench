; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/join/extr_join.c_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/join/extr_join.c_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, %struct.TYPE_4__*, i64)* @cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp(%struct.TYPE_4__* %0, i64 %1, %struct.TYPE_4__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ule i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ule i64 %18, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 1
  store i32 %22, i32* %5, align 4
  br label %44

23:                                               ; preds = %4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ule i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %44

30:                                               ; preds = %23
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mbscoll(i32 %36, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %30, %29, %15
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @mbscoll(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
