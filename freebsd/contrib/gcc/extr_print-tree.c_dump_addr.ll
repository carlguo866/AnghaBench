; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_print-tree.c_dump_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_print-tree.c_dump_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_dump_noaddr = common dso_local global i64 0, align 8
@flag_dump_unnumbered = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s#\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_addr(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i64, i64* @flag_dump_noaddr, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load i64, i64* @flag_dump_unnumbered, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9, %3
  %13 = load i32*, i32** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %21

16:                                               ; preds = %9
  %17 = load i32*, i32** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %18, i8* %19)
  br label %21

21:                                               ; preds = %16, %12
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
