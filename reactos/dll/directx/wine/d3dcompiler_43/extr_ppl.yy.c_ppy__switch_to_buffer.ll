; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_ppl.yy.c_ppy__switch_to_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_ppl.yy.c_ppy__switch_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@YY_CURRENT_BUFFER = common dso_local global %struct.TYPE_5__* null, align 8
@yy_hold_char = common dso_local global i32 0, align 4
@yy_c_buf_p = common dso_local global i32* null, align 8
@YY_CURRENT_BUFFER_LVALUE = common dso_local global %struct.TYPE_5__* null, align 8
@yy_n_chars = common dso_local global i32 0, align 4
@yy_did_buffer_switch_on_eof = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yy_switch_to_buffer(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = call i32 (...) @yyensure_buffer_stack()
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @YY_CURRENT_BUFFER, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = icmp eq %struct.TYPE_5__* %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %23

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @YY_CURRENT_BUFFER, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i32, i32* @yy_hold_char, align 4
  %13 = load i32*, i32** @yy_c_buf_p, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32*, i32** @yy_c_buf_p, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load i32, i32* @yy_n_chars, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %20

20:                                               ; preds = %11, %8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %22 = call i32 (...) @yy_load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %23

23:                                               ; preds = %20, %7
  ret void
}

declare dso_local i32 @yyensure_buffer_stack(...) #1

declare dso_local i32 @yy_load_buffer_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
