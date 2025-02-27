; ModuleID = '/home/carl/AnghaBench/linux/lib/crypto/extr_des.c_des_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/lib/crypto/extr_des.c_des_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.des_ctx = type { i32* }

@DES_EXPKEY_WORDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @des_decrypt(%struct.des_ctx* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.des_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.des_ctx* %0, %struct.des_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.des_ctx*, %struct.des_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.des_ctx, %struct.des_ctx* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @DES_EXPKEY_WORDS, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = getelementptr inbounds i32, i32* %18, i64 -2
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @get_unaligned_le32(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = call i32 @get_unaligned_le32(i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @IP(i32 %25, i32 %26, i32 %27)
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %45, %3
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @ROUND(i32 %33, i32 %34, i32 %35, i32 %36, i32* %37, i32 -2)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @ROUND(i32 %39, i32 %40, i32 %41, i32 %42, i32* %43, i32 -2)
  br label %45

45:                                               ; preds = %32
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %29

48:                                               ; preds = %29
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @FP(i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @put_unaligned_le32(i32 %53, i32* %54)
  %56 = load i32, i32* %8, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  %59 = call i32 @put_unaligned_le32(i32 %56, i32* %58)
  ret void
}

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @IP(i32, i32, i32) #1

declare dso_local i32 @ROUND(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @FP(i32, i32, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
