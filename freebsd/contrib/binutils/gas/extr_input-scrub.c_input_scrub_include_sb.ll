; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_input-scrub.c_input_scrub_include_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_input-scrub.c_input_scrub_include_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i8* }

@macro_nest = common dso_local global i64 0, align 8
@max_macro_nest = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"macros nested too deeply\00", align 1
@next_saved_file = common dso_local global %struct.TYPE_7__* null, align 8
@from_sb = common dso_local global i32 0, align 4
@from_sb_is_expansion = common dso_local global i32 0, align 4
@sb_index = common dso_local global i32 0, align 4
@logical_input_line = common dso_local global i32 0, align 4
@logical_input_file = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_scrub_include_sb(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* @macro_nest, align 8
  %8 = load i64, i64* @max_macro_nest, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @as_fatal(i32 %11)
  br label %13

13:                                               ; preds = %10, %3
  %14 = load i64, i64* @macro_nest, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* @macro_nest, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call %struct.TYPE_7__* @input_scrub_push(i8* %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** @next_saved_file, align 8
  %18 = call i32 @sb_new(i32* @from_sb)
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* @from_sb_is_expansion, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %22, 1
  br i1 %23, label %24, label %34

24:                                               ; preds = %13
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 10
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 @sb_add_char(i32* @from_sb, i8 signext 10)
  br label %34

34:                                               ; preds = %32, %24, %13
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = call i32 @sb_scrub_and_add_sb(i32* @from_sb, %struct.TYPE_6__* %35)
  store i32 1, i32* @sb_index, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @next_saved_file, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* @logical_input_line, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @next_saved_file, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* @logical_input_file, align 4
  ret void
}

declare dso_local i32 @as_fatal(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_7__* @input_scrub_push(i8*) #1

declare dso_local i32 @sb_new(i32*) #1

declare dso_local i32 @sb_add_char(i32*, i8 signext) #1

declare dso_local i32 @sb_scrub_and_add_sb(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
