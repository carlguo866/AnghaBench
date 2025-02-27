; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_hashtable.c_hashtable_get.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_hashtable.c_hashtable_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hashtable_get(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @hash_str(i8* %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @hashmask(i32 %17)
  %19 = and i64 %14, %18
  %20 = getelementptr inbounds i32, i32* %13, i64 %19
  store i32* %20, i32** %8, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call %struct.TYPE_6__* @hashtable_find_pair(%struct.TYPE_7__* %21, i32* %22, i8* %23, i64 %24)
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %6, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %3, align 8
  br label %33

33:                                               ; preds = %29, %28
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

declare dso_local i64 @hash_str(i8*) #1

declare dso_local i64 @hashmask(i32) #1

declare dso_local %struct.TYPE_6__* @hashtable_find_pair(%struct.TYPE_7__*, i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
