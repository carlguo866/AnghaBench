; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_gcm.c_gcm_iv_generate.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_gcm.c_gcm_iv_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i32 }

@GCM_IV_DEFAULT_SIZE = common dso_local global i32 0, align 4
@IV_STATE_BUFFERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @gcm_iv_generate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_iv_generate(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GCM_IV_DEFAULT_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %41

21:                                               ; preds = %14
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @rand_bytes_ex(i32 %24, i64 %30, i32 %31)
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %41

35:                                               ; preds = %21
  %36 = load i32, i32* @IV_STATE_BUFFERED, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %34, %20
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @rand_bytes_ex(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
