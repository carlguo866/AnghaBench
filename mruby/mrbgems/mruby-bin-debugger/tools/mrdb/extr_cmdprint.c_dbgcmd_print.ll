; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdprint.c_dbgcmd_print.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdprint.c_dbgcmd_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [25 x i8] c"Parameter not specified.\00", align 1
@DBGST_PROMPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"$%lu = \00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbgcmd_print(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @DBGST_PROMPT, align 4
  store i32 %16, i32* %3, align 4
  br label %81

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @mrb_gc_arena_save(i32* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @mrb_str_new_cstr(i32* %20, i32* null)
  store i32 %21, i32* %6, align 4
  store i64 1, i64* %8, align 8
  br label %22

22:                                               ; preds = %42, %17
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %23, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %22
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @mrb_str_cat_lit(i32* %30, i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %6, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mrb_str_cat_cstr(i32* %33, i32 %34, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %29
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %8, align 8
  br label %22

45:                                               ; preds = %22
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @RSTRING_PTR(i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @RSTRING_LEN(i32 %52)
  %54 = call i32 @mrb_debug_eval(i32* %46, i32 %49, i32 %51, i32 %53, i32* null, i32 0)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = sext i32 %57 to i64
  %60 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @RSTRING_PTR(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @RSTRING_LEN(i32 %63)
  %65 = load i32, i32* @stdout, align 4
  %66 = call i32 @fwrite(i32 %62, i32 %64, i32 1, i32 %65)
  %67 = load i32, i32* @stdout, align 4
  %68 = call i32 @putc(i8 signext 10, i32 %67)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %45
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %45
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @mrb_gc_arena_restore(i32* %77, i32 %78)
  %80 = load i32, i32* @DBGST_PROMPT, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %76, %14
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i32 @mrb_str_new_cstr(i32*, i32*) #1

declare dso_local i32 @mrb_str_cat_lit(i32*, i32, i8*) #1

declare dso_local i32 @mrb_str_cat_cstr(i32*, i32, i32) #1

declare dso_local i32 @mrb_debug_eval(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i32 @RSTRING_LEN(i32) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32) #1

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i32 @mrb_gc_arena_restore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
