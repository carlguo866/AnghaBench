; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c_crypto_exit_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c_crypto_exit_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 (%struct.crypto_tfm*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.crypto_type* }
%struct.crypto_type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*)* @crypto_exit_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_exit_ops(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.crypto_type*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %4 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %5 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.crypto_type*, %struct.crypto_type** %7, align 8
  store %struct.crypto_type* %8, %struct.crypto_type** %3, align 8
  %9 = load %struct.crypto_type*, %struct.crypto_type** %3, align 8
  %10 = icmp ne %struct.crypto_type* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %13 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %12, i32 0, i32 0
  %14 = load i32 (%struct.crypto_tfm*)*, i32 (%struct.crypto_tfm*)** %13, align 8
  %15 = icmp ne i32 (%struct.crypto_tfm*)* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %18 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %17, i32 0, i32 0
  %19 = load i32 (%struct.crypto_tfm*)*, i32 (%struct.crypto_tfm*)** %18, align 8
  %20 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %21 = call i32 %19(%struct.crypto_tfm* %20)
  br label %22

22:                                               ; preds = %16, %11
  br label %34

23:                                               ; preds = %1
  %24 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %25 = call i32 @crypto_tfm_alg_type(%struct.crypto_tfm* %24)
  switch i32 %25, label %32 [
    i32 129, label %26
    i32 128, label %29
  ]

26:                                               ; preds = %23
  %27 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %28 = call i32 @crypto_exit_cipher_ops(%struct.crypto_tfm* %27)
  br label %34

29:                                               ; preds = %23
  %30 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %31 = call i32 @crypto_exit_compress_ops(%struct.crypto_tfm* %30)
  br label %34

32:                                               ; preds = %23
  %33 = call i32 (...) @BUG()
  br label %34

34:                                               ; preds = %22, %32, %29, %26
  ret void
}

declare dso_local i32 @crypto_tfm_alg_type(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_exit_cipher_ops(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_exit_compress_ops(%struct.crypto_tfm*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
