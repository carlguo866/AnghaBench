; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_parse_for.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_parse_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8, i32* }

@FSCOPE_LOOP = common dso_local global i32 0, align 4
@TK_in = common dso_local global i8 0, align 1
@LJ_ERR_XFOR = common dso_local global i32 0, align 4
@TK_end = common dso_local global i32 0, align 4
@TK_for = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @parse_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_for(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @FSCOPE_LOOP, align 4
  %13 = call i32 @fscope_begin(i32* %11, i32* %7, i32 %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = call i32 @lj_lex_next(%struct.TYPE_9__* %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = call i32* @lex_str(%struct.TYPE_9__* %16)
  store i32* %17, i32** %6, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 8
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 61
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @parse_for_num(%struct.TYPE_9__* %24, i32* %25, i32 %26)
  br label %51

28:                                               ; preds = %2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 8
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 44
  br i1 %33, label %42, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 8
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @TK_in, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %34, %28
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @parse_for_iter(%struct.TYPE_9__* %43, i32* %44)
  br label %50

46:                                               ; preds = %34
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = load i32, i32* @LJ_ERR_XFOR, align 4
  %49 = call i32 @err_syntax(%struct.TYPE_9__* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %50, %23
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = load i32, i32* @TK_end, align 4
  %54 = load i32, i32* @TK_for, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @lex_match(%struct.TYPE_9__* %52, i32 %53, i32 %54, i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @fscope_end(i32* %57)
  ret void
}

declare dso_local i32 @fscope_begin(i32*, i32*, i32) #1

declare dso_local i32 @lj_lex_next(%struct.TYPE_9__*) #1

declare dso_local i32* @lex_str(%struct.TYPE_9__*) #1

declare dso_local i32 @parse_for_num(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @parse_for_iter(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @err_syntax(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @lex_match(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @fscope_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
