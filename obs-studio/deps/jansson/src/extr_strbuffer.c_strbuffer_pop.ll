; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_strbuffer.c_strbuffer_pop.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_strbuffer.c_strbuffer_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @strbuffer_pop(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ugt i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = getelementptr inbounds i8, i8* %12, i64 %16
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %4, align 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  store i8 0, i8* %25, align 1
  %26 = load i8, i8* %4, align 1
  store i8 %26, i8* %2, align 1
  br label %28

27:                                               ; preds = %1
  store i8 0, i8* %2, align 1
  br label %28

28:                                               ; preds = %27, %9
  %29 = load i8, i8* %2, align 1
  ret i8 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
