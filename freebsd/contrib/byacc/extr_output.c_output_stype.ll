; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_stype.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_stype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@unionized = common dso_local global i32 0, align 4
@ntags = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"#if ! defined(YYSTYPE) && ! defined(YYSTYPE_IS_DECLARED)\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"/* Default: YYSTYPE is the semantic value type. */\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"typedef int YYSTYPE;\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"# define YYSTYPE_IS_DECLARED 1\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @output_stype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_stype(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @unionized, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = load i64, i64* @ntags, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @putc_code(i32* %9, i8 signext 10)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @putl_code(i32* %11, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @putl_code(i32* %13, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @putl_code(i32* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @putl_code(i32* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @putl_code(i32* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %21

21:                                               ; preds = %8, %5, %1
  ret void
}

declare dso_local i32 @putc_code(i32*, i8 signext) #1

declare dso_local i32 @putl_code(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
