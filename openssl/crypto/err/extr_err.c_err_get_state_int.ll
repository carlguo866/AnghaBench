; ModuleID = '/home/carl/AnghaBench/openssl/crypto/err/extr_err.c_err_get_state_int.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/err/extr_err.c_err_get_state_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPENSSL_INIT_BASE_ONLY = common dso_local global i32 0, align 4
@err_init = common dso_local global i32 0, align 4
@err_do_init = common dso_local global i32 0, align 4
@err_thread_local = common dso_local global i32 0, align 4
@err_delete_thread_state = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_CRYPTO_STRINGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @err_get_state_int() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @get_last_sys_error()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @OPENSSL_INIT_BASE_ONLY, align 4
  %6 = call i32 @OPENSSL_init_crypto(i32 %5, i32* null)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %50

9:                                                ; preds = %0
  %10 = load i32, i32* @err_do_init, align 4
  %11 = call i32 @RUN_ONCE(i32* @err_init, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store i32* null, i32** %1, align 8
  br label %50

14:                                               ; preds = %9
  %15 = call i32* @CRYPTO_THREAD_get_local(i32* @err_thread_local)
  store i32* %15, i32** %2, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = icmp eq i32* %16, inttoptr (i64 -1 to i32*)
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32* null, i32** %1, align 8
  br label %50

19:                                               ; preds = %14
  %20 = load i32*, i32** %2, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = call i32 @CRYPTO_THREAD_set_local(i32* @err_thread_local, i32* inttoptr (i64 -1 to i32*))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32* null, i32** %1, align 8
  br label %50

26:                                               ; preds = %22
  %27 = call i32* @OPENSSL_zalloc(i32 4)
  store i32* %27, i32** %2, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @CRYPTO_THREAD_set_local(i32* @err_thread_local, i32* null)
  store i32* null, i32** %1, align 8
  br label %50

31:                                               ; preds = %26
  %32 = load i32, i32* @err_delete_thread_state, align 4
  %33 = call i32 @ossl_init_thread_start(i32* null, i32* null, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @CRYPTO_THREAD_set_local(i32* @err_thread_local, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35, %31
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @ERR_STATE_free(i32* %40)
  %42 = call i32 @CRYPTO_THREAD_set_local(i32* @err_thread_local, i32* null)
  store i32* null, i32** %1, align 8
  br label %50

43:                                               ; preds = %35
  %44 = load i32, i32* @OPENSSL_INIT_LOAD_CRYPTO_STRINGS, align 4
  %45 = call i32 @OPENSSL_init_crypto(i32 %44, i32* null)
  br label %46

46:                                               ; preds = %43, %19
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @set_sys_error(i32 %47)
  %49 = load i32*, i32** %2, align 8
  store i32* %49, i32** %1, align 8
  br label %50

50:                                               ; preds = %46, %39, %29, %25, %18, %13, %8
  %51 = load i32*, i32** %1, align 8
  ret i32* %51
}

declare dso_local i32 @get_last_sys_error(...) #1

declare dso_local i32 @OPENSSL_init_crypto(i32, i32*) #1

declare dso_local i32 @RUN_ONCE(i32*, i32) #1

declare dso_local i32* @CRYPTO_THREAD_get_local(i32*) #1

declare dso_local i32 @CRYPTO_THREAD_set_local(i32*, i32*) #1

declare dso_local i32* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @ossl_init_thread_start(i32*, i32*, i32) #1

declare dso_local i32 @ERR_STATE_free(i32*) #1

declare dso_local i32 @set_sys_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
