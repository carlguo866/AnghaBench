; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_ssl.c_BIO_new_rwcount.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_ssl.c_BIO_new_rwcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @BIO_new_rwcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @BIO_new_rwcount(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @BIO_s_rwcount()
  %6 = call i32* @BIO_new(i32 %5)
  store i32* %6, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %22

9:                                                ; preds = %1
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @BIO_set_init(i32* %10, i32 1)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @BIO_set_data(i32* %12, i32* null)
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BIO_set_shutdown(i32* %14, i32 %19)
  %21 = load i32*, i32** %4, align 8
  store i32* %21, i32** %2, align 8
  br label %22

22:                                               ; preds = %9, %8
  %23 = load i32*, i32** %2, align 8
  ret i32* %23
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_rwcount(...) #1

declare dso_local i32 @BIO_set_init(i32*, i32) #1

declare dso_local i32 @BIO_set_data(i32*, i32*) #1

declare dso_local i32 @BIO_set_shutdown(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
