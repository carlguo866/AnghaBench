; ModuleID = '/home/carl/AnghaBench/jq/src/extr_lexer.c_jq_yyrestart.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_lexer.c_jq_yyrestart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yyguts_t = type { i32 }

@YY_CURRENT_BUFFER = common dso_local global i32 0, align 4
@yyin = common dso_local global i32 0, align 4
@YY_BUF_SIZE = common dso_local global i32 0, align 4
@YY_CURRENT_BUFFER_LVALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yyrestart(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.yyguts_t*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = inttoptr i64 %6 to %struct.yyguts_t*
  store %struct.yyguts_t* %7, %struct.yyguts_t** %5, align 8
  %8 = load i32, i32* @YY_CURRENT_BUFFER, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @yyensure_buffer_stack(i64 %11)
  %13 = load i32, i32* @yyin, align 4
  %14 = load i32, i32* @YY_BUF_SIZE, align 4
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @yy_create_buffer(i32 %13, i32 %14, i64 %15)
  store i32 %16, i32* @YY_CURRENT_BUFFER_LVALUE, align 4
  br label %17

17:                                               ; preds = %10, %2
  %18 = load i32, i32* @YY_CURRENT_BUFFER, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @yy_init_buffer(i32 %18, i32* %19, i64 %20)
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @yy_load_buffer_state(i64 %22)
  ret void
}

declare dso_local i32 @yyensure_buffer_stack(i64) #1

declare dso_local i32 @yy_create_buffer(i32, i32, i64) #1

declare dso_local i32 @yy_init_buffer(i32, i32*, i64) #1

declare dso_local i32 @yy_load_buffer_state(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
