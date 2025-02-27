; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_sha2.c_SHA256_Final.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_sha2.c_SHA256_Final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@SHA256_DIGEST_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SHA256_Final(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %7 = zext i32 %6 to i64
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = call i32 @SHA256_Pad(%struct.TYPE_5__* %8)
  %10 = load i32*, i32** %3, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %30, %12
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @BE_32_TO_8(i32* %21, i32 %28)
  br label %30

30:                                               ; preds = %16
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %13

33:                                               ; preds = %13
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = call i32 @memset(%struct.TYPE_5__* %34, i32 0, i32 8)
  br label %36

36:                                               ; preds = %33, %2
  ret void
}

declare dso_local i32 @SHA256_Pad(%struct.TYPE_5__*) #1

declare dso_local i32 @BE_32_TO_8(i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
