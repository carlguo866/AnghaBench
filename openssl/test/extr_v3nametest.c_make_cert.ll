; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_v3nametest.c_make_cert.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_v3nametest.c_make_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @make_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_cert() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  %3 = call i32* (...) @X509_new()
  store i32* %3, i32** %2, align 8
  %4 = call i32 @TEST_ptr(i32* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %17

7:                                                ; preds = %0
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @X509_set_version(i32* %8, i32 2)
  %10 = call i32 @TEST_true(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @X509_free(i32* %13)
  store i32* null, i32** %1, align 8
  br label %17

15:                                               ; preds = %7
  %16 = load i32*, i32** %2, align 8
  store i32* %16, i32** %1, align 8
  br label %17

17:                                               ; preds = %15, %12, %6
  %18 = load i32*, i32** %1, align 8
  ret i32* %18
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @X509_new(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @X509_set_version(i32*, i32) #1

declare dso_local i32 @X509_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
