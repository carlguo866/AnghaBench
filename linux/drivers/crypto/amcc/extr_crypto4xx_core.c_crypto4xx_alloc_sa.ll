; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_alloc_sa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_alloc_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_ctx = type { i32, i32*, i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto4xx_alloc_sa(%struct.crypto4xx_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto4xx_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.crypto4xx_ctx* %0, %struct.crypto4xx_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call i8* @kcalloc(i32 %6, i32 4, i32 %7)
  %9 = bitcast i8* %8 to i32*
  %10 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %10, i32 0, i32 1
  store i32* %9, i32** %11, align 8
  %12 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %43

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call i8* @kcalloc(i32 %20, i32 4, i32 %21)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %19
  %31 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %19
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %30, %16
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
