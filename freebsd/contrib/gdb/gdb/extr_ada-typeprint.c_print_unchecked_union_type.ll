; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_unchecked_union_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_unchecked_union_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"record (?) is\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" ... end record\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" null; end record\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\0A%*scase ? is\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"\0A%*swhen ? =>\0A%*s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"\0A%*send case;\0A%*send record\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, %struct.ui_file*, i32, i32)* @print_unchecked_union_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_unchecked_union_type(%struct.type* %0, %struct.ui_file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %5, align 8
  store %struct.ui_file* %1, %struct.ui_file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %11 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %16 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %65

17:                                               ; preds = %4
  %18 = load %struct.type*, %struct.type** %5, align 8
  %19 = call i32 @TYPE_NFIELDS(%struct.type* %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %23 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %64

24:                                               ; preds = %17
  %25 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 4
  %28 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %55, %24
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.type*, %struct.type** %5, align 8
  %32 = call i32 @TYPE_NFIELDS(%struct.type* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  %35 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 8
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 12
  %40 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 %39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %41 = load %struct.type*, %struct.type** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @TYPE_FIELD_TYPE(%struct.type* %41, i32 %42)
  %44 = load %struct.type*, %struct.type** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @TYPE_FIELD_NAME(%struct.type* %44, i32 %45)
  %47 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 12
  %52 = call i32 @ada_print_type(i32 %43, i32 %46, %struct.ui_file* %47, i32 %49, i32 %51)
  %53 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %54 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %55

55:                                               ; preds = %34
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %29

58:                                               ; preds = %29
  %59 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %61, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 %62, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %58, %21
  br label %65

65:                                               ; preds = %64, %14
  ret void
}

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @ada_print_type(i32, i32, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FIELD_NAME(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
