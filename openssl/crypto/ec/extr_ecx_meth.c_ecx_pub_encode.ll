; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecx_meth.c_ecx_pub_encode.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecx_meth.c_ecx_pub_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@EC_F_ECX_PUB_ENCODE = common dso_local global i32 0, align 4
@EC_R_INVALID_KEY = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@V_ASN1_UNDEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*)* @ecx_pub_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecx_pub_encode(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %13 = icmp eq %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @EC_F_ECX_PUB_ENCODE, align 4
  %16 = load i32, i32* @EC_R_INVALID_KEY, align 4
  %17 = call i32 @ECerr(i32 %15, i32 %16)
  store i32 0, i32* %3, align 4
  br label %52

18:                                               ; preds = %2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = call i32 @KEYLEN(%struct.TYPE_9__* %22)
  %24 = call i8* @OPENSSL_memdup(i32 %21, i32 %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32, i32* @EC_F_ECX_PUB_ENCODE, align 4
  %29 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %30 = call i32 @ECerr(i32 %28, i32 %29)
  store i32 0, i32* %3, align 4
  br label %52

31:                                               ; preds = %18
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @OBJ_nid2obj(i32 %37)
  %39 = load i32, i32* @V_ASN1_UNDEF, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = call i32 @KEYLEN(%struct.TYPE_9__* %41)
  %43 = call i32 @X509_PUBKEY_set0_param(i32* %32, i32 %38, i32 %39, i32* null, i8* %40, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %31
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @OPENSSL_free(i8* %46)
  %48 = load i32, i32* @EC_F_ECX_PUB_ENCODE, align 4
  %49 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %50 = call i32 @ECerr(i32 %48, i32 %49)
  store i32 0, i32* %3, align 4
  br label %52

51:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %45, %27, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i8* @OPENSSL_memdup(i32, i32) #1

declare dso_local i32 @KEYLEN(%struct.TYPE_9__*) #1

declare dso_local i32 @X509_PUBKEY_set0_param(i32*, i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
