; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_initializer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_initializer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@CPP_OPEN_PAREN = common dso_local global i64 0, align 8
@CPP_EQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"expected initializer\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32*)* @cp_parser_initializer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_initializer(%struct.TYPE_9__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_8__* @cp_lexer_peek_token(i32 %11)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CPP_OPEN_PAREN, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %6, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CPP_EQ, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cp_lexer_consume_token(i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @cp_parser_initializer_clause(%struct.TYPE_9__* %31, i32* %32)
  store i32 %33, i32* %8, align 4
  br label %49

34:                                               ; preds = %3
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CPP_OPEN_PAREN, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @cp_parser_parenthesized_expression_list(%struct.TYPE_9__* %41, i32 0, i32 0, i32* %42)
  store i32 %43, i32* %8, align 4
  br label %48

44:                                               ; preds = %34
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = call i32 @cp_parser_error(%struct.TYPE_9__* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @error_mark_node, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %26
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_8__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i32 @cp_parser_initializer_clause(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @cp_parser_parenthesized_expression_list(%struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
