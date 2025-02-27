; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dsa/extr_dsa_meth.c_DSA_meth_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dsa/extr_dsa_meth.c_DSA_meth_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@DSA_F_DSA_METH_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @DSA_meth_new(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.TYPE_5__* @OPENSSL_zalloc(i32 16)
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32* @OPENSSL_strdup(i8* %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %3, align 8
  br label %31

24:                                               ; preds = %10
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = call i32 @OPENSSL_free(%struct.TYPE_5__* %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* @DSA_F_DSA_METH_NEW, align 4
  %29 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %30 = call i32 @DSAerr(i32 %28, i32 %29)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %32
}

declare dso_local %struct.TYPE_5__* @OPENSSL_zalloc(i32) #1

declare dso_local i32* @OPENSSL_strdup(i8*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_5__*) #1

declare dso_local i32 @DSAerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
