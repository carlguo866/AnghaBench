; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/store/extr_loader_file.c_ossl_store_file_attach_pem_bio_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/store/extr_loader_file.c_ossl_store_file_attach_pem_bio_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@OSSL_STORE_F_OSSL_STORE_FILE_ATTACH_PEM_BIO_INT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@is_pem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @ossl_store_file_attach_pem_bio_int(i32* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call %struct.TYPE_8__* @OPENSSL_zalloc(i32 16)
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %7 = icmp eq %struct.TYPE_8__* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @OSSL_STORE_F_OSSL_STORE_FILE_ATTACH_PEM_BIO_INT, align 4
  %10 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %11 = call i32 @OSSL_STOREerr(i32 %9, i32 %10)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %22

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32* %13, i32** %17, align 8
  %18 = load i32, i32* @is_pem, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %2, align 8
  br label %22

22:                                               ; preds = %12, %8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %23
}

declare dso_local %struct.TYPE_8__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @OSSL_STOREerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
