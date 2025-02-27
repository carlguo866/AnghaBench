; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_expr.c_check_scalar_type.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_expr.c_check_scalar_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr_loc = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"scalar type required in expression%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" for attribute \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expr_loc*, i32*, i32*)* @check_scalar_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_scalar_type(%struct.expr_loc* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.expr_loc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.expr_loc* %0, %struct.expr_loc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @is_integer_type(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %9
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @is_ptr(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @is_float_type(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %17, %3
  %22 = load %struct.expr_loc*, %struct.expr_loc** %4, align 8
  %23 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.expr_loc*, %struct.expr_loc** %4, align 8
  %27 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %32 = load %struct.expr_loc*, %struct.expr_loc** %4, align 8
  %33 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %21
  %37 = load %struct.expr_loc*, %struct.expr_loc** %4, align 8
  %38 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  br label %41

40:                                               ; preds = %21
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i8* [ %39, %36 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %40 ]
  %43 = call i32 @error_loc_info(i32* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %42)
  br label %44

44:                                               ; preds = %41, %17, %13, %9
  ret void
}

declare dso_local i32 @is_integer_type(i32*) #1

declare dso_local i32 @is_ptr(i32*) #1

declare dso_local i32 @is_float_type(i32*) #1

declare dso_local i32 @error_loc_info(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
