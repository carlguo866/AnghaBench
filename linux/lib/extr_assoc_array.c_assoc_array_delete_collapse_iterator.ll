; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_assoc_array.c_assoc_array_delete_collapse_iterator.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_assoc_array.c_assoc_array_delete_collapse_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assoc_array_delete_collapse_context = type { i8*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@ASSOC_ARRAY_FAN_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @assoc_array_delete_collapse_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assoc_array_delete_collapse_iterator(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.assoc_array_delete_collapse_context*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.assoc_array_delete_collapse_context*
  store %struct.assoc_array_delete_collapse_context* %8, %struct.assoc_array_delete_collapse_context** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.assoc_array_delete_collapse_context*, %struct.assoc_array_delete_collapse_context** %6, align 8
  %11 = getelementptr inbounds %struct.assoc_array_delete_collapse_context, %struct.assoc_array_delete_collapse_context* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp eq i8* %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load %struct.assoc_array_delete_collapse_context*, %struct.assoc_array_delete_collapse_context** %6, align 8
  %17 = getelementptr inbounds %struct.assoc_array_delete_collapse_context, %struct.assoc_array_delete_collapse_context* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ASSOC_ARRAY_FAN_OUT, align 8
  %20 = icmp sge i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @assoc_array_leaf_to_ptr(i8* %23)
  %25 = load %struct.assoc_array_delete_collapse_context*, %struct.assoc_array_delete_collapse_context** %6, align 8
  %26 = getelementptr inbounds %struct.assoc_array_delete_collapse_context, %struct.assoc_array_delete_collapse_context* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.assoc_array_delete_collapse_context*, %struct.assoc_array_delete_collapse_context** %6, align 8
  %31 = getelementptr inbounds %struct.assoc_array_delete_collapse_context, %struct.assoc_array_delete_collapse_context* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32 %24, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %15, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @assoc_array_leaf_to_ptr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
