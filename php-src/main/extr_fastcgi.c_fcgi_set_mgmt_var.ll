; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_fastcgi.c_fcgi_set_mgmt_var.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_fastcgi.c_fcgi_set_mgmt_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fcgi_mgmt_vars = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fcgi_set_mgmt_var(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32* @zend_string_init(i8* %11, i64 %12, i32 1)
  store i32* %13, i32** %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32* @zend_string_init(i8* %14, i64 %15, i32 1)
  %17 = call i32 @ZVAL_NEW_STR(i32* %9, i32* %16)
  %18 = load i32*, i32** %10, align 8
  %19 = call i32 @GC_MAKE_PERSISTENT_LOCAL(i32* %18)
  %20 = load i32, i32* %9, align 4
  %21 = call i32* @Z_STR(i32 %20)
  %22 = call i32 @GC_MAKE_PERSISTENT_LOCAL(i32* %21)
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @zend_hash_add(i32* @fcgi_mgmt_vars, i32* %23, i32* %9)
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @zend_string_release_ex(i32* %25, i32 1)
  ret void
}

declare dso_local i32* @zend_string_init(i8*, i64, i32) #1

declare dso_local i32 @ZVAL_NEW_STR(i32*, i32*) #1

declare dso_local i32 @GC_MAKE_PERSISTENT_LOCAL(i32*) #1

declare dso_local i32* @Z_STR(i32) #1

declare dso_local i32 @zend_hash_add(i32*, i32*, i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
