; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_type.c_aggregate_item_field_index.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_type.c_aggregate_item_field_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aggregate_item_field_index(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = call i32 @is_aggregate_type(%struct.TYPE_8__* %7)
  %9 = call i32 @assert(i32 %8)
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %32, %2
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %10
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp eq i8* %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load i64, i64* %6, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %36

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %10

35:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_aggregate_type(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
