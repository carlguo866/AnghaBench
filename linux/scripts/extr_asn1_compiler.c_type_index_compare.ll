; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_asn1_compiler.c_type_index_compare.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_asn1_compiler.c_type_index_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @type_index_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_index_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.type**, align 8
  %7 = alloca %struct.type**, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.type**
  store %struct.type** %9, %struct.type*** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.type**
  store %struct.type** %11, %struct.type*** %7, align 8
  %12 = load %struct.type**, %struct.type*** %6, align 8
  %13 = load %struct.type*, %struct.type** %12, align 8
  %14 = getelementptr inbounds %struct.type, %struct.type* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.type**, %struct.type*** %7, align 8
  %19 = load %struct.type*, %struct.type** %18, align 8
  %20 = getelementptr inbounds %struct.type, %struct.type* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %17, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %2
  %26 = load %struct.type**, %struct.type*** %6, align 8
  %27 = load %struct.type*, %struct.type** %26, align 8
  %28 = getelementptr inbounds %struct.type, %struct.type* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.type**, %struct.type*** %7, align 8
  %33 = load %struct.type*, %struct.type** %32, align 8
  %34 = getelementptr inbounds %struct.type, %struct.type* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %31, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %61

40:                                               ; preds = %2
  %41 = load %struct.type**, %struct.type*** %6, align 8
  %42 = load %struct.type*, %struct.type** %41, align 8
  %43 = getelementptr inbounds %struct.type, %struct.type* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.type**, %struct.type*** %7, align 8
  %48 = load %struct.type*, %struct.type** %47, align 8
  %49 = getelementptr inbounds %struct.type, %struct.type* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.type**, %struct.type*** %6, align 8
  %54 = load %struct.type*, %struct.type** %53, align 8
  %55 = getelementptr inbounds %struct.type, %struct.type* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @memcmp(i32 %46, i32 %52, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %40, %25
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
