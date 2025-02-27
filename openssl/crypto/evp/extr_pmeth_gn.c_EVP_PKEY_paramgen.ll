; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_pmeth_gn.c_EVP_PKEY_paramgen.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_pmeth_gn.c_EVP_PKEY_paramgen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32*)* }

@EVP_F_EVP_PKEY_PARAMGEN = common dso_local global i32 0, align 4
@EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE = common dso_local global i32 0, align 4
@EVP_PKEY_OP_PARAMGEN = common dso_local global i64 0, align 8
@EVP_R_OPERATON_NOT_INITIALIZED = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_PKEY_paramgen(%struct.TYPE_6__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_6__*, i32*)*, i32 (%struct.TYPE_6__*, i32*)** %18, align 8
  %20 = icmp ne i32 (%struct.TYPE_6__*, i32*)* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %14, %9, %2
  %22 = load i32, i32* @EVP_F_EVP_PKEY_PARAMGEN, align 4
  %23 = load i32, i32* @EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE, align 4
  %24 = call i32 @EVPerr(i32 %22, i32 %23)
  store i32 -2, i32* %3, align 4
  br label %73

25:                                               ; preds = %14
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EVP_PKEY_OP_PARAMGEN, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @EVP_F_EVP_PKEY_PARAMGEN, align 4
  %33 = load i32, i32* @EVP_R_OPERATON_NOT_INITIALIZED, align 4
  %34 = call i32 @EVPerr(i32 %32, i32 %33)
  store i32 -1, i32* %3, align 4
  br label %73

35:                                               ; preds = %25
  %36 = load i32**, i32*** %5, align 8
  %37 = icmp eq i32** %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %73

39:                                               ; preds = %35
  %40 = load i32**, i32*** %5, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = call i32* (...) @EVP_PKEY_new()
  %45 = load i32**, i32*** %5, align 8
  store i32* %44, i32** %45, align 8
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i32**, i32*** %5, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* @EVP_F_EVP_PKEY_PARAMGEN, align 4
  %52 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %53 = call i32 @EVPerr(i32 %51, i32 %52)
  store i32 -1, i32* %3, align 4
  br label %73

54:                                               ; preds = %46
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_6__*, i32*)*, i32 (%struct.TYPE_6__*, i32*)** %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = load i32**, i32*** %5, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 %59(%struct.TYPE_6__* %60, i32* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %54
  %67 = load i32**, i32*** %5, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @EVP_PKEY_free(i32* %68)
  %70 = load i32**, i32*** %5, align 8
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %66, %54
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %50, %38, %31, %21
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
