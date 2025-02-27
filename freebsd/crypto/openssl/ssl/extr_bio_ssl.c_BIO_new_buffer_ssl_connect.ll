; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_bio_ssl.c_BIO_new_buffer_ssl_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_bio_ssl.c_BIO_new_buffer_ssl_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BIO_new_buffer_ssl_connect(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %7 = call i32 (...) @BIO_f_buffer()
  %8 = call i32* @BIO_new(i32 %7)
  store i32* %8, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %29

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @BIO_new_ssl_connect(i32* %12)
  store i32* %13, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %24

16:                                               ; preds = %11
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @BIO_push(i32* %17, i32* %18)
  store i32* %19, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %24

22:                                               ; preds = %16
  %23 = load i32*, i32** %4, align 8
  store i32* %23, i32** %2, align 8
  br label %29

24:                                               ; preds = %21, %15
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @BIO_free(i32* %25)
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @BIO_free(i32* %27)
  store i32* null, i32** %2, align 8
  br label %29

29:                                               ; preds = %24, %22, %10
  %30 = load i32*, i32** %2, align 8
  ret i32* %30
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_f_buffer(...) #1

declare dso_local i32* @BIO_new_ssl_connect(i32*) #1

declare dso_local i32* @BIO_push(i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
