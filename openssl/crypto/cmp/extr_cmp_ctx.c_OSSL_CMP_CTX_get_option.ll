; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_ctx.c_OSSL_CMP_CTX_get_option.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_ctx.c_OSSL_CMP_CTX_get_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CMP_R_NULL_ARGUMENT = common dso_local global i32 0, align 4
@CMP_R_INVALID_ARGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OSSL_CMP_CTX_get_option(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = icmp eq %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* @CMP_R_NULL_ARGUMENT, align 4
  %10 = call i32 @CMPerr(i32 0, i32 %9)
  store i32 -1, i32* %3, align 4
  br label %88

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %85 [
    i32 141, label %13
    i32 142, label %17
    i32 144, label %21
    i32 129, label %25
    i32 130, label %29
    i32 128, label %33
    i32 132, label %37
    i32 133, label %41
    i32 136, label %45
    i32 143, label %49
    i32 135, label %53
    i32 145, label %57
    i32 138, label %61
    i32 140, label %65
    i32 139, label %69
    i32 131, label %73
    i32 137, label %77
    i32 134, label %81
  ]

13:                                               ; preds = %11
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  br label %88

17:                                               ; preds = %11
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %88

21:                                               ; preds = %11
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  br label %88

25:                                               ; preds = %11
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  br label %88

29:                                               ; preds = %11
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %3, align 4
  br label %88

33:                                               ; preds = %11
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %3, align 4
  br label %88

37:                                               ; preds = %11
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %3, align 4
  br label %88

41:                                               ; preds = %11
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %3, align 4
  br label %88

45:                                               ; preds = %11
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %3, align 4
  br label %88

49:                                               ; preds = %11
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %3, align 4
  br label %88

53:                                               ; preds = %11
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %3, align 4
  br label %88

57:                                               ; preds = %11
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %3, align 4
  br label %88

61:                                               ; preds = %11
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 12
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %3, align 4
  br label %88

65:                                               ; preds = %11
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 13
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %3, align 4
  br label %88

69:                                               ; preds = %11
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 14
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %3, align 4
  br label %88

73:                                               ; preds = %11
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 15
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %3, align 4
  br label %88

77:                                               ; preds = %11
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 16
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %3, align 4
  br label %88

81:                                               ; preds = %11
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 17
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %3, align 4
  br label %88

85:                                               ; preds = %11
  %86 = load i32, i32* @CMP_R_INVALID_ARGS, align 4
  %87 = call i32 @CMPerr(i32 0, i32 %86)
  store i32 -1, i32* %3, align 4
  br label %88

88:                                               ; preds = %85, %81, %77, %73, %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17, %13, %8
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @CMPerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
