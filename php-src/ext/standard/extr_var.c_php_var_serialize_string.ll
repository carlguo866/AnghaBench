; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_var.c_php_var_serialize_string.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_var.c_php_var_serialize_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"s:\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c":\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\22;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64)* @php_var_serialize_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_var_serialize_string(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @smart_str_appendl(i32* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %9 = load i32*, i32** %4, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @smart_str_append_unsigned(i32* %9, i64 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @smart_str_appendl(i32* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %14 = load i32*, i32** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @smart_str_appendl(i32* %14, i8* %15, i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @smart_str_appendl(i32* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  ret void
}

declare dso_local i32 @smart_str_appendl(i32*, i8*, i32) #1

declare dso_local i32 @smart_str_append_unsigned(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
