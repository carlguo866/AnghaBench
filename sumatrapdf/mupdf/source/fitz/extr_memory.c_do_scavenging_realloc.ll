; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_memory.c_do_scavenging_realloc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_memory.c_do_scavenging_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8* (i32, i8*, i64)* }

@FZ_LOCK_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*, i8*, i64)* @do_scavenging_realloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @do_scavenging_realloc(%struct.TYPE_8__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = load i32, i32* @FZ_LOCK_ALLOC, align 4
  %12 = call i32 @fz_lock(%struct.TYPE_8__* %10, i32 %11)
  br label %13

13:                                               ; preds = %33, %3
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i8* (i32, i8*, i64)*, i8* (i32, i8*, i64)** %16, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i8* %17(i32 %21, i8* %22, i64 %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %13
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = load i32, i32* @FZ_LOCK_ALLOC, align 4
  %30 = call i32 @fz_unlock(%struct.TYPE_8__* %28, i32 %29)
  %31 = load i8*, i8** %8, align 8
  store i8* %31, i8** %4, align 8
  br label %42

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @fz_store_scavenge(%struct.TYPE_8__* %34, i64 %35, i32* %9)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %13, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = load i32, i32* @FZ_LOCK_ALLOC, align 4
  %41 = call i32 @fz_unlock(%struct.TYPE_8__* %39, i32 %40)
  store i8* null, i8** %4, align 8
  br label %42

42:                                               ; preds = %38, %27
  %43 = load i8*, i8** %4, align 8
  ret i8* %43
}

declare dso_local i32 @fz_lock(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @fz_unlock(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @fz_store_scavenge(%struct.TYPE_8__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
