; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_conflict.c_print_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_conflict.c_print_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.print_context = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c" %d:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @print_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_conflict(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.print_context*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.print_context*
  store %struct.print_context* %10, %struct.print_context** %7, align 8
  %11 = load %struct.print_context*, %struct.print_context** %7, align 8
  %12 = getelementptr inbounds %struct.print_context, %struct.print_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %3
  %16 = load %struct.print_context*, %struct.print_context** %7, align 8
  %17 = getelementptr inbounds %struct.print_context, %struct.print_context* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.print_context*, %struct.print_context** %7, align 8
  %20 = getelementptr inbounds %struct.print_context, %struct.print_context* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.print_context*, %struct.print_context** %7, align 8
  %24 = getelementptr inbounds %struct.print_context, %struct.print_context* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %15, %3
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.print_context*, %struct.print_context** %7, align 8
  %28 = getelementptr inbounds %struct.print_context, %struct.print_context* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %8, align 4
  br label %42

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.print_context*, %struct.print_context** %7, align 8
  %36 = getelementptr inbounds %struct.print_context, %struct.print_context* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @gcc_assert(i32 %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %33, %31
  %43 = load %struct.print_context*, %struct.print_context** %7, align 8
  %44 = getelementptr inbounds %struct.print_context, %struct.print_context* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
