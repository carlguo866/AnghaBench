; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-print/src/extr_print.c_printstr.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-print/src/extr_print.c_printstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @printstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printstr(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @mrb_string_p(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = call i8* @RSTRING_PTR(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @RSTRING_LEN(i32 %11)
  %13 = load i32, i32* @stdout, align 4
  %14 = call i32 @fwrite(i8* %10, i64 %12, i32 1, i32 %13)
  %15 = load i32, i32* @stdout, align 4
  %16 = call i32 @fflush(i32 %15)
  br label %17

17:                                               ; preds = %8, %2
  ret void
}

declare dso_local i64 @mrb_string_p(i32) #1

declare dso_local i32 @fwrite(i8*, i64, i32, i32) #1

declare dso_local i8* @RSTRING_PTR(i32) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
