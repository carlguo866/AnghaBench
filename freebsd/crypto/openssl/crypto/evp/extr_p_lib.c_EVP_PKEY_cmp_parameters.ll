; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_p_lib.c_EVP_PKEY_cmp_parameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_p_lib.c_EVP_PKEY_cmp_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_PKEY_cmp_parameters(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %14
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.TYPE_8__*, %struct.TYPE_8__*)**
  %25 = load i32 (%struct.TYPE_8__*, %struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*, %struct.TYPE_8__*)** %24, align 8
  %26 = icmp ne i32 (%struct.TYPE_8__*, %struct.TYPE_8__*)* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %19
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.TYPE_8__*, %struct.TYPE_8__*)**
  %33 = load i32 (%struct.TYPE_8__*, %struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*, %struct.TYPE_8__*)** %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = call i32 %33(%struct.TYPE_8__* %34, %struct.TYPE_8__* %35)
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %19, %14
  store i32 -2, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %27, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
