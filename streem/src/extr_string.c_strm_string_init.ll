; ModuleID = '/home/carl/AnghaBench/streem/src/extr_string.c_strm_string_init.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_string.c_strm_string_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@strm_ns_string = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@str_length = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@str_split = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@str_plus = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"chars\00", align 1
@str_chars = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strm_string_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32 @strm_ns_new(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %3, i32* @strm_ns_string, align 4
  %4 = load i32, i32* @strm_ns_string, align 4
  %5 = load i32, i32* @str_length, align 4
  %6 = call i32 @strm_cfunc_value(i32 %5)
  %7 = call i32 @strm_var_def(i32 %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @strm_ns_string, align 4
  %9 = load i32, i32* @str_split, align 4
  %10 = call i32 @strm_cfunc_value(i32 %9)
  %11 = call i32 @strm_var_def(i32 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @strm_ns_string, align 4
  %13 = load i32, i32* @str_plus, align 4
  %14 = call i32 @strm_cfunc_value(i32 %13)
  %15 = call i32 @strm_var_def(i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @strm_ns_string, align 4
  %17 = load i32, i32* @str_chars, align 4
  %18 = call i32 @strm_cfunc_value(i32 %17)
  %19 = call i32 @strm_var_def(i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %18)
  ret void
}

declare dso_local i32 @strm_ns_new(i32*, i8*) #1

declare dso_local i32 @strm_var_def(i32, i8*, i32) #1

declare dso_local i32 @strm_cfunc_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
