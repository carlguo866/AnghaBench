; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_finish_type.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_finish_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"randomize_considered\00", align 1
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @finish_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_type(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = ptrtoint i8* %6 to i64
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @NULL_TREE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @error_mark_node, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %2
  br label %37

16:                                               ; preds = %11
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @TREE_CODE(i64 %17)
  %19 = load i64, i64* @RECORD_TYPE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %37

22:                                               ; preds = %16
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @TYPE_FIELDS(i64 %23)
  %25 = load i64, i64* @NULL_TREE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %37

28:                                               ; preds = %22
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @TYPE_ATTRIBUTES(i64 %29)
  %31 = call i64 @lookup_attribute(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %37

34:                                               ; preds = %28
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @randomize_type(i64 %35)
  br label %37

37:                                               ; preds = %34, %33, %27, %21, %15
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @lookup_attribute(i8*, i32) #1

declare dso_local i32 @TYPE_ATTRIBUTES(i64) #1

declare dso_local i32 @randomize_type(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
