; ModuleID = '/home/carl/AnghaBench/jq/src/extr_lexer.c_yy_push_state.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_lexer.c_yy_push_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yyguts_t = type { i64, i64, i32* }

@YY_START_STACK_INCR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"out of memory expanding start-condition stack\00", align 1
@YY_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @yy_push_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yy_push_state(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.yyguts_t*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to %struct.yyguts_t*
  store %struct.yyguts_t* %8, %struct.yyguts_t** %5, align 8
  %9 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %10 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %13 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %2
  %17 = load i64, i64* @YY_START_STACK_INCR, align 8
  %18 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %19 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, %17
  store i64 %21, i64* %19, align 8
  %22 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %23 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %30 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %16
  %34 = load i32, i32* %6, align 4
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @yyalloc(i32 %34, i64 %35)
  %37 = inttoptr i64 %36 to i32*
  %38 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %39 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  br label %51

40:                                               ; preds = %16
  %41 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %42 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = bitcast i32* %43 to i8*
  %45 = load i32, i32* %6, align 4
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @yyrealloc(i8* %44, i32 %45, i64 %46)
  %48 = inttoptr i64 %47 to i32*
  %49 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %50 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  br label %51

51:                                               ; preds = %40, %33
  %52 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %53 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = call i32 @YY_FATAL_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %51
  br label %59

59:                                               ; preds = %58, %2
  %60 = load i32, i32* @YY_START, align 4
  %61 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %62 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %65 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 %60, i32* %68, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @BEGIN(i32 %69)
  ret void
}

declare dso_local i64 @yyalloc(i32, i64) #1

declare dso_local i64 @yyrealloc(i8*, i32, i64) #1

declare dso_local i32 @YY_FATAL_ERROR(i8*) #1

declare dso_local i32 @BEGIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
