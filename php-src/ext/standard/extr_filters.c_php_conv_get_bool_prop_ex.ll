; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_php_conv_get_bool_prop_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_php_conv_get_bool_prop_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHP_CONV_ERR_SUCCESS = common dso_local global i32 0, align 4
@PHP_CONV_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i64)* @php_conv_get_bool_prop_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_conv_get_bool_prop_ex(i32* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i64, i64* %9, align 8
  %14 = sub i64 %13, 1
  %15 = call i32* @zend_hash_str_find(i32* %11, i8* %12, i64 %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @zend_is_true(i32* %19)
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @PHP_CONV_ERR_SUCCESS, align 4
  store i32 %22, i32* %5, align 4
  br label %26

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* @PHP_CONV_ERR_NOT_FOUND, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32* @zend_hash_str_find(i32*, i8*, i64) #1

declare dso_local i32 @zend_is_true(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
