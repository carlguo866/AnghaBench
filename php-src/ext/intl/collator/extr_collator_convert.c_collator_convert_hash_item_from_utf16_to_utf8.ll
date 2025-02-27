; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/collator/extr_collator_convert.c_collator_convert_hash_item_from_utf16_to_utf8.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/collator/extr_collator_convert.c_collator_convert_hash_item_from_utf16_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32*)* @collator_convert_hash_item_from_utf16_to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collator_convert_hash_item_from_utf16_to_utf8(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @Z_TYPE_P(i32* %15)
  %17 = load i64, i64* @IS_STRING, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %47

20:                                               ; preds = %5
  %21 = load i32*, i32** %7, align 8
  %22 = call i8* @Z_STRVAL_P(i32* %21)
  store i8* %22, i8** %11, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @Z_STRLEN_P(i32* %23)
  store i64 %24, i64* %12, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @UCHARS(i64 %27)
  %29 = load i32*, i32** %10, align 8
  %30 = call i32* @intl_convert_utf16_to_utf8(i32* %26, i32 %28, i32* %29)
  store i32* %30, i32** %13, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %20
  br label %47

34:                                               ; preds = %20
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @ZVAL_NEW_STR(i32* %14, i32* %35)
  %37 = load i32*, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @zend_hash_update(i32* %40, i32* %41, i32* %14)
  br label %47

43:                                               ; preds = %34
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @zend_hash_index_update(i32* %44, i32 %45, i32* %14)
  br label %47

47:                                               ; preds = %19, %33, %43, %39
  ret void
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i64 @Z_STRLEN_P(i32*) #1

declare dso_local i32* @intl_convert_utf16_to_utf8(i32*, i32, i32*) #1

declare dso_local i32 @UCHARS(i64) #1

declare dso_local i32 @ZVAL_NEW_STR(i32*, i32*) #1

declare dso_local i32 @zend_hash_update(i32*, i32*, i32*) #1

declare dso_local i32 @zend_hash_index_update(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
