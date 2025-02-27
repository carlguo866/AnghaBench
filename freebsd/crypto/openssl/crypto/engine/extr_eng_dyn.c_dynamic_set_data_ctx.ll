; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_dyn.c_dynamic_set_data_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_dyn.c_dynamic_set_data_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i32, i32* }

@ENGINE_F_DYNAMIC_SET_DATA_CTX = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"v_check\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bind_engine\00", align 1
@global_engine_lock = common dso_local global i32 0, align 4
@dynamic_ex_data_idx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__**)* @dynamic_set_data_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dynamic_set_data_ctx(i32* %0, %struct.TYPE_6__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %5, align 8
  %8 = call %struct.TYPE_6__* @OPENSSL_zalloc(i32 32)
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %6, align 8
  store i32 1, i32* %7, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %10 = icmp eq %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @ENGINE_F_DYNAMIC_SET_DATA_CTX, align 4
  %13 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %14 = call i32 @ENGINEerr(i32 %12, i32 %13)
  store i32 0, i32* %3, align 4
  br label %69

15:                                               ; preds = %2
  %16 = call i32* (...) @sk_OPENSSL_STRING_new_null()
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load i32, i32* @ENGINE_F_DYNAMIC_SET_DATA_CTX, align 4
  %25 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %26 = call i32 @ENGINEerr(i32 %24, i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = call i32 @OPENSSL_free(%struct.TYPE_6__* %27)
  store i32 0, i32* %3, align 4
  br label %69

29:                                               ; preds = %15
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* @global_engine_lock, align 4
  %37 = call i32 @CRYPTO_THREAD_write_lock(i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @dynamic_ex_data_idx, align 4
  %40 = call i64 @ENGINE_get_ex_data(i32* %38, i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_6__*
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %42, align 8
  %43 = icmp eq %struct.TYPE_6__* %41, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %29
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @dynamic_ex_data_idx, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = call i32 @ENGINE_set_ex_data(i32* %45, i32 %46, %struct.TYPE_6__* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %53, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %54

54:                                               ; preds = %51, %44
  br label %55

55:                                               ; preds = %54, %29
  %56 = load i32, i32* @global_engine_lock, align 4
  %57 = call i32 @CRYPTO_THREAD_unlock(i32 %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = icmp ne %struct.TYPE_6__* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @sk_OPENSSL_STRING_free(i32* %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = call i32 @OPENSSL_free(%struct.TYPE_6__* %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %23, %11
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_6__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @ENGINEerr(i32, i32) #1

declare dso_local i32* @sk_OPENSSL_STRING_new_null(...) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_6__*) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local i64 @ENGINE_get_ex_data(i32*, i32) #1

declare dso_local i32 @ENGINE_set_ex_data(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

declare dso_local i32 @sk_OPENSSL_STRING_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
