; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.yy.c_parser_restart.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.yy.c_parser_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YY_CURRENT_BUFFER = common dso_local global i32 0, align 4
@parser_in = common dso_local global i32 0, align 4
@YY_BUF_SIZE = common dso_local global i32 0, align 4
@YY_CURRENT_BUFFER_LVALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parser_restart(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @YY_CURRENT_BUFFER, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = call i32 (...) @parser_ensure_buffer_stack()
  %7 = load i32, i32* @parser_in, align 4
  %8 = load i32, i32* @YY_BUF_SIZE, align 4
  %9 = call i32 @parser__create_buffer(i32 %7, i32 %8)
  store i32 %9, i32* @YY_CURRENT_BUFFER_LVALUE, align 4
  br label %10

10:                                               ; preds = %5, %1
  %11 = load i32, i32* @YY_CURRENT_BUFFER, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @parser__init_buffer(i32 %11, i32* %12)
  %14 = call i32 (...) @parser__load_buffer_state()
  ret void
}

declare dso_local i32 @parser_ensure_buffer_stack(...) #1

declare dso_local i32 @parser__create_buffer(i32, i32) #1

declare dso_local i32 @parser__init_buffer(i32, i32*) #1

declare dso_local i32 @parser__load_buffer_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
